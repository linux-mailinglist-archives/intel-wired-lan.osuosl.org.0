Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A286AA8940F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 08:42:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 541F740D68;
	Tue, 15 Apr 2025 06:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id T-WCHghlxHaI; Tue, 15 Apr 2025 06:42:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B31DF410B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744699327;
	bh=zcIAga6GYfzSYtTDO27V82Rac8anYUyHC4H02k+lpNo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4Un1V47oNNTjNyTX6SdBEOCHxoFTbDZx3F9xDRMDMOXofkBBZ/iNLi0egvpJfBQsS
	 d61bukyldLsv+BwsDnp/kV01zZwQjkbaidHLiiVUs+n5EaBdx4Aa24o6463ZxASyF2
	 UPVhtUejxR+PrHAkc2aVtqUGG97LrBBGVc25M8xuP6IP3HIj2sPK9Wow23sF3YhPgd
	 WidX8O9jsJ68giSlJZpuluc1SzmtedK+0VcZnhu1ktXF4yQFV7TsXhI+A+0/d0XusM
	 pPpzJk773zQAxTVFkVD2pVskvBLgQA4RDAAZat7p+rgn8dNlFCLEfc1VLITqNDBBbD
	 lSgPsJj9DNRtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B31DF410B8;
	Tue, 15 Apr 2025 06:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id BCEA8109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 06:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id A29CF610F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 06:42:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id YoEgYMcZwZBV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 06:42:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=t-8ch@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 073A3610BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 073A3610BD
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 073A3610BD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 06:42:04 +0000 (UTC)
Date: Tue, 15 Apr 2025 08:42:01 +0200
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
To: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Cc: Jeff Johnson <jjohnson@kernel.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Brian Norris <briannorris@chromium.org>,
 Francesco Dolcini <francesco@dolcini.it>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>, ath10k@lists.infradead.org,
 linux-kernel@vger.kernel.org, 
 ath11k@lists.infradead.org, ath12k@lists.infradead.org,
 wcn36xx@lists.infradead.org, 
 linux-wireless@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org
Message-ID: <20250415084125-a8677bbf-5fee-4670-8d4c-4afda6669e5f@linutronix.de>
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
 <9c53011a-0e00-49f8-bf7e-b04ddc8c575b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9c53011a-0e00-49f8-bf7e-b04ddc8c575b@oss.qualcomm.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744699322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zcIAga6GYfzSYtTDO27V82Rac8anYUyHC4H02k+lpNo=;
 b=eJQyJh4PDfD3MFybZK57HSiim6SrToWbG5vis+3yeZ9uaCDEfrs1/zbSr78EZdhDUZqCNk
 Zb6/iGTUh8vhK2//ahfE75aaTSwuo+npGWmBUM3RA3qj6pI7LkNvKFrBqcnQw5+I9NxgbK
 r4//3qKNtN7PlsoJNA45nC2bOEapn03Nie9UL7Wi+ePAMxRzEqI63hCy43JtHOv1WxpK49
 GsRer8kOiweAFl/VXWLzf3qUqrJnIaaXuHTwtBwpf+l51hxVG8iszaDWVsjWsAQR96dMIu
 Capvt/4r0j4sNdPTJSDsubtyM3mzzOeljZtVvRZghnIytaTK8FN07P1AyYPLVA==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744699322;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zcIAga6GYfzSYtTDO27V82Rac8anYUyHC4H02k+lpNo=;
 b=vkHNJiYezAQSOxrKFxNBB4BL/zW1bwvyrhu4JqnD9CdZgyVlWlwHGv6AvwNgS/LfIMGT6K
 FJueRUo6PMOUBVCQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=eJQyJh4P; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=vkHNJiYe
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/7] net: Don't use %pK
 through printk
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

On Mon, Apr 14, 2025 at 08:02:39AM -0700, Jeff Johnson wrote:
> On 4/14/2025 1:26 AM, Thomas Weißschuh wrote:
> >       wifi: ath10k: Don't use %pK through printk
> >       wifi: ath11k: Don't use %pK through printk
> >       wifi: ath12k: Don't use %pK through printk
> >       wifi: wcn36xx: Don't use %pK through printk
> 
> the first four should go through ath-next and not net-next
> 
> >       wifi: mwifiex: Don't use %pK through printk
> 
> this should go through wireless-next

Ack, thanks. I'll resend it there when the discussions here are done.
