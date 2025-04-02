Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8BCA78C97
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 12:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DBAD80359;
	Wed,  2 Apr 2025 10:45:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57c__ILWmksU; Wed,  2 Apr 2025 10:45:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 669698319F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743590700;
	bh=V44jQhfXZFRMaYV7EYWgg+brV+qQ7i8rYGkA/MtWj1Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MYO/YGlAYq67INvtufzzDBQ/73+f2PguJ0+Kevv1G2MdcAax55rXe50FXK92o3zcC
	 ulvbY9x3BMlfEp3SEnFBKADexv/CsAjzE+qPun0JQJ1PC54JyjUwIizJW+zzKWMS8p
	 rJAwvTOmaFzevyn3djP/k+qAaxnpUfZMYosPZ0GHnWfK4Qm7E2/5mxqwCbOgMgyefI
	 wUfvXk7aT0AYJB0K93How0uzTodbE6JSFUgS7EGDn0thSd8tCHArBEx8xWpT964xqw
	 MpnyVkQpQAmoNNMRG/PKsY/MFjHFdlA0YYKVYqE2RZRA61psBeEZUBNoV82x5kwSDr
	 qinGeaGUWw8jg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 669698319F;
	Wed,  2 Apr 2025 10:45:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B586117
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58F578319F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:44:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zmVZya4yisJD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Apr 2025 10:44:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a07:de40:b251:101:10:150:64:2; helo=smtp-out2.suse.de;
 envelope-from=vbabka@suse.cz; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 513E283103
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 513E283103
Received: from smtp-out2.suse.de (smtp-out2.suse.de
 [IPv6:2a07:de40:b251:101:10:150:64:2])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 513E283103
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Apr 2025 10:44:57 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 29DF41F38A;
 Wed,  2 Apr 2025 10:44:52 +0000 (UTC)
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 860F4137D4;
 Wed,  2 Apr 2025 10:44:51 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id CfIsHyMV7WcKXgAAD6G6ig
 (envelope-from <vbabka@suse.cz>); Wed, 02 Apr 2025 10:44:51 +0000
Message-ID: <3f387b13-5482-46ed-9f52-4a9ed7001e67@suse.cz>
Date: Wed, 2 Apr 2025 12:44:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 torvalds@linux-foundation.org, peterz@infradead.org,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>
Cc: andriy.shevchenko@linux.intel.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, Harry Yoo <harry.yoo@oracle.com>,
 Matthew Wilcox <willy@infradead.org>, Christoph Lameter <cl@gentwo.org>
References: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <20250401134408.37312-1-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 29DF41F38A
X-Spamd-Result: default: False [-4.51 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; RCVD_VIA_SMTP_AUTH(0.00)[]; ARC_NA(0.00)[];
 MIME_TRACE(0.00)[0:+]; MID_RHS_MATCH_FROM(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[13]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RCVD_TLS_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; RCVD_COUNT_TWO(0.00)[2];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns,suse.cz:dkim,suse.cz:mid,intel.com:email];
 DKIM_TRACE(0.00)[suse.cz:+]
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Rspamd-Action: no action
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1743590692; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V44jQhfXZFRMaYV7EYWgg+brV+qQ7i8rYGkA/MtWj1Q=;
 b=EplJr8+BK+pJm2YQ2ZJTFdqc3XPtJ6TX8dVEmw1CaQVIW8ZW6up9Vj7BaoHUkMftbqZL50
 3/HQjChFzrNoqULvi0jw88k5gKQ6vBVq1Uo8WDjWgXVmCJ85Y2Wv0tQ2mNAD4gtygKQFxH
 AMU7nqKMSyog8qUZzOqbfvU/RPD7sII=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1743590692;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V44jQhfXZFRMaYV7EYWgg+brV+qQ7i8rYGkA/MtWj1Q=;
 b=qpuImgyhZeem5DOPN+L2+Zs5U1kwMSecOMXLIJNHGhsvo3XNUFJZIzGqYI1po9FczHpLC+
 QFhDLGC/oxP2HnAg==
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; 
 t=1743590692; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V44jQhfXZFRMaYV7EYWgg+brV+qQ7i8rYGkA/MtWj1Q=;
 b=EplJr8+BK+pJm2YQ2ZJTFdqc3XPtJ6TX8dVEmw1CaQVIW8ZW6up9Vj7BaoHUkMftbqZL50
 3/HQjChFzrNoqULvi0jw88k5gKQ6vBVq1Uo8WDjWgXVmCJ85Y2Wv0tQ2mNAD4gtygKQFxH
 AMU7nqKMSyog8qUZzOqbfvU/RPD7sII=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1743590692;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=V44jQhfXZFRMaYV7EYWgg+brV+qQ7i8rYGkA/MtWj1Q=;
 b=qpuImgyhZeem5DOPN+L2+Zs5U1kwMSecOMXLIJNHGhsvo3XNUFJZIzGqYI1po9FczHpLC+
 QFhDLGC/oxP2HnAg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=suse.cz
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key, unprotected) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=EplJr8+B; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=qpuImgyh; 
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=EplJr8+B; 
 dkim=neutral header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=qpuImgyh
X-Mailman-Original-Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=EplJr8+B;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=qpuImgyh
Subject: Re: [Intel-wired-lan] [RFC] slab: introduce auto_kfree macro
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Cc Kees and others from his related efforts:

https://lore.kernel.org/all/20250321202620.work.175-kees@kernel.org/

On 4/1/25 15:44, Przemek Kitszel wrote:
> Add auto_kfree macro that acts as a higher level wrapper for manual
> __free(kfree) invocation, and sets the pointer to NULL - to have both
> well defined behavior also for the case code would lack other assignement.
> 
> Consider the following code:
> int my_foo(int arg)
> {
> 	struct my_dev_foo *foo __free(kfree); /* no assignement */
> 
> 	foo = kzalloc(sizeof(*foo), GFP_KERNEL);
> 	/* ... */
> }
> 
> So far it is fine and even optimal in terms of not assigning when
> not needed. But it is typical to don't touch (and sadly to don't
> think about) code that is not related to the change, so let's consider
> an extension to the above, namely an "early return" style to check
> arg prior to allocation:
> int my_foo(int arg)
> {
>         struct my_dev_foo *foo __free(kfree); /* no assignement */
> +
> +	if (!arg)
> +		return -EINVAL;
>         foo = kzalloc(sizeof(*foo), GFP_KERNEL);
>         /* ... */
> }
> Now we have uninitialized foo passed to kfree, what likely will crash.
> One could argue that `= NULL` should be added to this patch, but it is
> easy to forgot, especially when the foo declaration is outside of the
> default git context.
> 
> With new auto_kfree, we simply will start with
> 	struct my_dev_foo *foo auto_kfree;
> and be safe against future extensions.
> 
> I believe this will open up way for broader adoption of Scope Based
> Resource Management, say in networking.
> I also believe that my proposed name is special enough that it will
> be easy to know/spot that the assignement is hidden.
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  include/linux/slab.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/slab.h b/include/linux/slab.h
> index 98e07e9e9e58..b943be0ce626 100644
> --- a/include/linux/slab.h
> +++ b/include/linux/slab.h
> @@ -471,6 +471,7 @@ void kfree_sensitive(const void *objp);
>  size_t __ksize(const void *objp);
>  
>  DEFINE_FREE(kfree, void *, if (!IS_ERR_OR_NULL(_T)) kfree(_T))
> +#define auto_kfree __free(kfree) = NULL
>  DEFINE_FREE(kfree_sensitive, void *, if (_T) kfree_sensitive(_T))
>  
>  /**

