Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKeiD1EKyWm5tgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Mar 2026 13:17:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B03351C4C
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Mar 2026 13:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 691E060A3B;
	Sun, 29 Mar 2026 11:17:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AMMeWx42sMJd; Sun, 29 Mar 2026 11:17:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DBCE760A38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774783053;
	bh=ZZZEbvtH/bKZ6jbXxyKNF2VJCYpTcm4/gV6VLpLYICA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1wg9Xa3xuzOU237TVWBa2R24jnxJ7e0abeFTBe27QrtgAAiPOuBhcuwQRf6SmIyUh
	 JHQ7HmwwxanAdbbZalnKyxWb1ubeQD2pGBKGguLuYfxsQ5wDViLgxh43SM8e7rONNW
	 6neWLHD59zu4O1ygQrZ+a4hPyR5DIubQI6owpI3YjNuJuom5rr2sF/X0A7MGU8uFf/
	 EAcQ1+2q3qw7ycDgcNS9bD8QCs4pnu2RAk+lwV87WAibJiMFnjzDPuwaJ6kmdMQuvZ
	 eWdBhWbMnOit9qYEiHVhoeyOgh7a7dpQM7Jt5tN6vQvNtu9EqQddzdGjsxcHtvWFuT
	 ekHnZBuF4DkXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DBCE760A38;
	Sun, 29 Mar 2026 11:17:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 204C82EB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 11:17:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06425608DB
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 11:17:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BqoxBPgoeU0k for <intel-wired-lan@lists.osuosl.org>;
 Sun, 29 Mar 2026 11:17:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::333; helo=mail-wm1-x333.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC1BA6090A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC1BA6090A
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC1BA6090A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 11:17:26 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 5b1f17b1804b1-486fba7ce4cso35151885e9.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 29 Mar 2026 04:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774783045; x=1775387845;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZZZEbvtH/bKZ6jbXxyKNF2VJCYpTcm4/gV6VLpLYICA=;
 b=iS/+54nbvCnxmbtD5RWijcW1IoehH8bax7UzZ3sTXkVZl4dwTxq1vr8oJA5FXMdIHj
 dVW/f6XlpiEcuB86eZIJJggXTVDNGkSx/dJOkzb/BYLYh8wQi7dmZI1BMPvewS5euN7a
 loYnEKhyzkBrz46oPikdhdZ3cgYDaAbFls6B3GS1+FAozFB1jHa9ebvcIAliaN6K8fUZ
 LhfR/7BQqgIywBCFdPft58n1/AgL3OPBECZlQ+ePOQt68/S6NNGIAYjOa/YnpT1tIgfr
 iv7XtdsorGgZMvMYNnF+CNEBhVL4ZoYCS05nlf9o2o7PZzmZbtEB/+3EnXSw4ILhqi9E
 BSkw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXTlJoJJWWv8Jl/TJdmDM1I74WnmgTyzrBI7E7D5CIMNyll7tNCAl/xN4ASwcNRpcqNjBDI6KMDBxvXfGcAuYg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yyiw+zBQsPr51qoLuj8k4tiv8daog1Bx2sdpdGmjuT0i7uGpMLN
 7dzC+Lcoe+McDOBL9vqACVotz68vQjfr2SyDMVEWhkFm1xy6jJjejaePVK5NT/Xr7pI=
X-Gm-Gg: ATEYQzwTgyA3KrQV7Ih/M7mgwcQCPqjz2b0jcRqGuOP0kCltAYjEdHpnmMhUT42NemQ
 H1B06lHDiypbVKE67uwTDj8ryyJvWda5D9vDoE3KiBae7VFfvdR1Nznj9U7fb4OLKvvG2PhhlXt
 ceL2+8ado0QFDZv/ZTg5yFvoQDPjoKOz+eLFB+K0LYbiIpzCECLXXDjuPfl0E2nOtxtJ6VogoIr
 pXDCgw9o+t2aO/D1Gw7QOGCYsOfrxlSRKcnmfWJK6/XOmoU70XOVxeRGFvfqi+2c5RpHbPEQLtU
 jAPKG6zrN/qA5ayGxTLYAL32pJAuCFjc23a/GVEA/4w62f+tibQxzLzJk0eO+UVvTE8My0+ooxJ
 VACgljWbMoTStyVjspACYMeQSZPdP/3vE9wVXVwufYVHn456L1wvUrYQBHiWopBCtfd83k9EBfa
 rrFFJ2nEbvlYUDxvuPtxlrJZyb1gzGtE4XTcng8n8eUzE=
X-Received: by 2002:a05:600c:41d1:b0:485:364e:934e with SMTP id
 5b1f17b1804b1-48727eda4a4mr87253735e9.21.1774783044663; 
 Sun, 29 Mar 2026 04:17:24 -0700 (PDT)
Received: from FV6GYCPJ69 ([2001:1ae9:6084:ab00:4c27:3a72:8516:e661])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43cf21eba4dsm11810601f8f.11.2026.03.29.04.17.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2026 04:17:24 -0700 (PDT)
Date: Sun, 29 Mar 2026 13:17:21 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <wpjltue5gnv4e42a7cpewbgqeza7sl226qbgbbqjl7b2cjgtfc@kjqjqluv3vcb>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-3-przemyslaw.kitszel@intel.com>
 <aa7hsleso6z6zaubb6phx4lexqnthgdvkns5cpg75gk6w3pi3o@7skrmgryitsj>
 <b78d4c11-e20b-4a84-b8da-2638df46c46c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b78d4c11-e20b-4a84-b8da-2638df46c46c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774783045; x=1775387845;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZZZEbvtH/bKZ6jbXxyKNF2VJCYpTcm4/gV6VLpLYICA=;
 b=dZcC8srVkM0ttTR+dG9xwjL9EmqSL76GZXs8awXbr+Buu585WhDDjb72zViutX6cqW
 bS1Tvk7LuVkxmrx/Ol0q/3j8VZkiy+xcUGpRsIETZNRScXy4Fj0SbfNAncoTmAMIpqS8
 z0xDh9Ze7WPBqZCgfzc+9r31YqesNvy93WqySB9Cr93APusxR9tYj4bvVSlO0D3tJzUp
 NQEnHbE2wzg0nJV7MtdpbeKVezTrsz4wrkocXyvMnSzPiO6Gu1Ks1lwhNBwTrxccjUWb
 s0ug36Na62vBEl49qTO5wnghwem66u7mx/TosAMvzPhOmFaZ0WBKCFMsE5dU6AvXekx1
 TV6A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=dZcC8srV
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] devlink: unregister
 shared devlink resources on destroy
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
Cc: netdev@vger.kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.21 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:horms@kernel.org,m:kuba@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 19B03351C4C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thu, Mar 26, 2026 at 06:44:49AM +0100, przemyslaw.kitszel@intel.com wrote:
>On 3/26/26 06:20, Jiri Pirko wrote:
>> Wed, Mar 25, 2026 at 07:26:53AM +0100, przemyslaw.kitszel@intel.com wrote:
>> > Since shared devlink acts as a normal devlink instance, capable of all
>> > usual devlink operations, it must unregister its resources.
>> > 
>> > I plan to make use of devlink resources on a shared instance for ice
>> > driver by separate series, coming soon.
>> > 
>> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> > ---
>> > net/devlink/sh_dev.c | 1 +
>> > 1 file changed, 1 insertion(+)
>> > 
>> > diff --git a/net/devlink/sh_dev.c b/net/devlink/sh_dev.c
>> > index b85e5cb1edbe..5de138bf3630 100644
>> > --- a/net/devlink/sh_dev.c
>> > +++ b/net/devlink/sh_dev.c
>> > @@ -71,6 +71,7 @@ static void devlink_shd_destroy(struct devlink_shd *shd)
>> > 
>> > 	list_del(&shd->list);
>> > 	devl_lock(devlink);
>> > +	devl_resources_unregister(devlink);
>> 
>> Hmm. It is driver's responsibility to call this on appropriate place,
>> symmetric to resource register. Why to have this in code for sh?
>> 
>> The idea I had was to have callbacks to driver to do things like this
>> and more eventually. Would it work for you?
>
>for driver stuff that could be useful (say, someone wants to have
>an additional data structure to iterate and free), OTOH, each
>entity that is sharing should "unplug" from shared devlink, so
>those structures should be emptied anyway
>for my stuff in ice I managed to do without destructor
>
>coming back to devlink stuff - all things (resources, health)
>would need same cleaning in all drives, so putting that in
>devlink_shd_destroy() will simply take the burden off devs
>(at the expense of less symmetric code for normal/shared
>devlinks)

I think that devs can handle the burden for the sake of symmetricity.

>
>in short: I'm ok with any of
>a. callback for all cleanup
>b. callback for driver-specific cleanup
>c. no callback and no driver-specific cleanup (until someone needs
>   that very much)
>
>thanks!
>
>> 
>> 
>> > 	devl_unregister(devlink);
>> > 	devl_unlock(devlink);
>> > 	kfree(shd->id);
>> > -- 
>> > 2.51.1
>> > 
>
