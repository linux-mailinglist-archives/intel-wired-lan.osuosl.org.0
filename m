Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5673F5E63F2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Sep 2022 15:44:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EC8641A45;
	Thu, 22 Sep 2022 13:44:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4EC8641A45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1663854273;
	bh=Gr/4/XM/9BzfLBib0zAbPhQn5GYhNUh+OEMxTaV5wrs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Reply-To:Cc:From;
	b=Z/ubm+XJBByLxSl11/WH8RF26pq/t8Vjalfaf5KYjDuIEMJxPuvfZmK5yA8CVD+4g
	 ylq+ZVjtVpsF6Wz4Ta5JuhIHKQh4p6XviYkGDoLJtURhR/I1dSPqJx6EeO2jGTHrC0
	 jHj6SxAamWMWo4qvPWMd3iXGc170xpVo77IJyYIy+UUhSOAun5zDPMRlL1RZHl9nW8
	 FO1hQJz2KTRJKE9P9j2P1nKWwYG0q0EDggzzTDaaQUW967R1RuX0XMEVaMts9B1Vqx
	 yB/F2Xgyt5xCrISUWPp4PhQuqPTKW9lGDr0nfH57YVjfOgfxS1p/Pkm44qhbFCo3Ax
	 DYaVX4MuoQ2lQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZziUUlC16yaF; Thu, 22 Sep 2022 13:44:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1088A41847;
	Thu, 22 Sep 2022 13:44:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1088A41847
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBA5D1BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 13:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0EEF40C3C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 13:44:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0EEF40C3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Haq6qvDUjlTh for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Sep 2022 13:44:26 +0000 (UTC)
X-Greylist: delayed 00:08:35 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E7CC140239
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E7CC140239
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Sep 2022 13:44:25 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 312D81F8F8;
 Thu, 22 Sep 2022 13:35:47 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 5C8F513AA5;
 Thu, 22 Sep 2022 13:35:46 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id RvYRFbJkLGM6egAAMHmgww
 (envelope-from <dsterba@suse.cz>); Thu, 22 Sep 2022 13:35:46 +0000
Date: Thu, 22 Sep 2022 15:30:14 +0200
From: David Sterba <dsterba@suse.cz>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20220922133014.GI32411@suse.cz>
References: <20220922031013.2150682-1-keescook@chromium.org>
 <20220922031013.2150682-5-keescook@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922031013.2150682-5-keescook@chromium.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_rsa; t=1663853747;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IwL9ZLjfbaspCU82c8med1UAPhmCPx1OWhj8R1+9qNM=;
 b=XihVZkR0NFlKaTEY2REooJ4nnysnnfLcvjy51KzgHbSW+oLtMuf9IonwLm/KkASRNsstRo
 s4Dx+Q4cpaICoaXsH0DUfapvCIci0Ubcv9A9s0vR8XX8+NUFKAnyoOuIT9zDwNjs4dr4X/
 qezh4tAzHSN1OltdzTUMbRixdeL8EVg=
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=suse.cz; s=susede2_ed25519; t=1663853747;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=IwL9ZLjfbaspCU82c8med1UAPhmCPx1OWhj8R1+9qNM=;
 b=D4SrbPeIUjJXDbzN3l/v7S9Ic5eD5VW9j9nh63nD86Qj+hCZa1n0PAF8TSLqyf+7TdxxOs
 g6cysoCnwD04I3Cw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz
 header.a=rsa-sha256 header.s=susede2_rsa header.b=XihVZkR0; 
 dkim=pass header.d=suse.cz header.i=@suse.cz header.a=ed25519-sha256
 header.s=susede2_ed25519 header.b=D4SrbPeI
Subject: Re: [Intel-wired-lan] [PATCH 04/12] btrfs: send: Proactively round
 up to kmalloc bucket size
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Reply-To: dsterba@suse.cz
Cc: linux-wireless@vger.kernel.org, Jacob Shin <jacob.shin@amd.com>,
 llvm@lists.linux.dev, dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Jakub Kicinski <kuba@kernel.org>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Pekka Enberg <penberg@kernel.org>,
 Daniel Micay <danielmicay@gmail.com>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Sep 21, 2022 at 08:10:05PM -0700, Kees Cook wrote:
> Instead of discovering the kmalloc bucket size _after_ allocation, round
> up proactively so the allocation is explicitly made for the full size,
> allowing the compiler to correctly reason about the resulting size of
> the buffer through the existing __alloc_size() hint.
> 
> Cc: linux-btrfs@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Acked-by: David Sterba <dsterba@suse.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
