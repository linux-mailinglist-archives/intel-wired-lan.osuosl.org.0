Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE009D1531
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Nov 2024 17:19:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 985B746804;
	Mon, 18 Nov 2024 16:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r-4rcmh8lT6y; Mon, 18 Nov 2024 16:19:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A31C342F59
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731946765;
	bh=/a9kIL9Fe5oBYm4P3Imhxgji5kdM4wV5QzGKEXGXG8k=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JK73MoJERodhYsBpQhovzv3TrxSC5y/4sycJe1MxFPNh5oahtrRX2cuREq14s8Hah
	 9iEm0MlTqFXxvdFXuLCabEccQqxC9vzEHRycUo6yZGv9jIJCDj/bBlo8GmiZvjQszj
	 0+SO4FJ4kl+Mc8K06a4K0ocX6BWIFsmNqMPJOvBucLdnDtMljO1oyG/nFRh+RV+zVS
	 g/pDt1PcwfXQ090eNJ3+RqgwwI0k28y3JV+etNrUsGEdhYSMUuTZEubCckKn12ac4q
	 3xctEajZS6LzA/hsVsvGF4tru/DMWoLEQev6TMF8Rt0DRixGbN9FKzkvJ076xuxchM
	 smFOT8ciA1d9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A31C342F59;
	Mon, 18 Nov 2024 16:19:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 009B9B14
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 12:42:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5E1DF84DCB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 12:42:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id APe78C8cvy04 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Nov 2024 12:42:03 +0000 (UTC)
X-Greylist: delayed 1099 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 18 Nov 2024 12:42:03 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4283D84DA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4283D84DA6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=dg@treblig.org; receiver=<UNKNOWN> 
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4283D84DA6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Nov 2024 12:42:02 +0000 (UTC)
Received: from dg by mx.treblig.org with local (Exim 4.96)
 (envelope-from <dg@treblig.org>) id 1tD0mz-000UEW-0d;
 Mon, 18 Nov 2024 12:23:33 +0000
Date: Mon, 18 Nov 2024 12:23:33 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Message-ID: <ZzsxxXpzA5PByiIx@gallifrey>
References: <20241116152433.96262-1-linux@treblig.org>
 <e8c5b0ad-19aa-44b1-9b08-3929990e81c1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <e8c5b0ad-19aa-44b1-9b08-3929990e81c1@intel.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/6.1.0-21-amd64 (x86_64)
X-Uptime: 12:23:01 up 193 days, 23:37,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Mailman-Approved-At: Mon, 18 Nov 2024 16:19:21 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=Content-Type:MIME-Version:Message-ID:Subject:From:Date:From
 :Subject; bh=/a9kIL9Fe5oBYm4P3Imhxgji5kdM4wV5QzGKEXGXG8k=; b=VG3sfCYIhDsLz9F0
 qKQHGiPsafPr+sDUmCBBWFB9IKENrr9iUAqLFPAdBSbZbXQoFZUiT/thQFNOZVVJ5bNCOawVrczax
 pPzkWH82XQTS6PARQenKkds1wjql5w5Qr3u1UEQz5JNWmrwobIz4kY7gp1eA+TIjEnQASQ1xtN1OG
 Q/He996AobiD2g17efoWJ6I61zHfs7vbGn4wsvv8oix6nVdu50tjH++g5DO+r7ZhNntKZh04sRJZy
 1MBLYMjbxpUSDzGlERFDFuCAQmBtqf9ePy7FcwZXOFCJoCCas8I5uscglm/25m505iA749QweNw8C
 zwM9KzBHNuCdU4D5qw==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=VG3sfCYI
Subject: Re: [Intel-wired-lan] [PATCH net-next] intel/fm10k: Remove unused
 fm10k_iov_msg_mac_vlan_pf
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

* Przemek Kitszel (przemyslaw.kitszel@intel.com) wrote:
> On 11/16/24 16:24, linux@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <linux@treblig.org>
> > 
> > fm10k_iov_msg_mac_vlan_pf() has been unused since 2017's
> > commit 1f5c27e52857 ("fm10k: use the MAC/VLAN queue for VF<->PF MAC/VLAN
> > requests")
> > 
> > Remove it.
> > 
> > Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> 
> makes sense, and all constants in the removed code seem to be used
> elsewhere, so:
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Thanks

> for you future Intel-Ethernet-only changes it would be better to
> target as [iwl-next] or [iwl-net],
> no need to repost just fro that

Ah OK; so are you going to pick this one up via iwl?

Dave

-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/
