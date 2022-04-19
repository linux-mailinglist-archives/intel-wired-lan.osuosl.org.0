Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 133BF506D83
	for <lists+intel-wired-lan@lfdr.de>; Tue, 19 Apr 2022 15:33:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEC2C8434D;
	Tue, 19 Apr 2022 13:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LXyLG6IECn2H; Tue, 19 Apr 2022 13:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BFEB8434F;
	Tue, 19 Apr 2022 13:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D27A71BF42C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:33:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BAAD7410A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:33:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id npNWt49WM23x for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Apr 2022 13:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8946404EF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 13:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1650375186;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A8pwv+ZJJLl/50u6bBL/op2XVemL1XAIahtW2NWtn0M=;
 b=M67PkAsCZOaii1PJh6ETUpocMcvt3cleOGmdSvT/jpMyUFsANkZOs79h57oD9kdWesp1RV
 5EwSk4VXAxgsQ/iJl8Vw1sv4tnFXg/dAQGrXHAG3mDX11AfXotzcwc5XueR9yy2z6uq/1i
 4EYjcnLtyLmBS21jybSQKudWkCvmGCw=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-663-eIQf-Q21NAizV1Rc2-IFhA-1; Tue, 19 Apr 2022 09:33:05 -0400
X-MC-Unique: eIQf-Q21NAizV1Rc2-IFhA-1
Received: by mail-wm1-f70.google.com with SMTP id
 q6-20020a1cf306000000b0038c5726365aso1238861wmq.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Apr 2022 06:33:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=A8pwv+ZJJLl/50u6bBL/op2XVemL1XAIahtW2NWtn0M=;
 b=xzn++c2Dt+KEwnQfxL1qKi3NImD2xBM5kvhF1vC9oQAaKru2EJIK225FuVDJTb/i8Q
 8TAX58gyCZj2qXRLbXAjvlBNJ3W0wAqieu/pMrLdFJDV7EIitJaSud21MYM6kD37iaUW
 toNaGeMdLhMz/BGSbfGhGkyR0Dwal8wVzeEoFjWmVEqK5kQisjNc4BDamf8Cj9QEBglC
 89XY7KhSkYf+OxwSAWYv+eV0VJ0u4Z4/cLsJuMQoooUKZUVEOMH0fbBtETwIRDSdDoKh
 ZzNgHGJdJY3ygeqW+2pX5A6xbhsutjFheDNviQJzjlT3g75BGwkZly4RfzJiNV+dhXHP
 AuDg==
X-Gm-Message-State: AOAM532W3JvupQy0CSzuGo2OlTAEHU7CLOLKsiy02ggtBSqMDXherXG1
 uSOEOG3M6t0XS2mHDicZiLvu9HtFoQig6BiNAaKc0kSEC6GVikEzSFo8Kz7RstIdRc6+zv0zXLC
 CpHQj3oWXiIjjSQfxMi7y5maYvLWYJw==
X-Received: by 2002:a5d:6c66:0:b0:20a:847e:10b9 with SMTP id
 r6-20020a5d6c66000000b0020a847e10b9mr12598312wrz.82.1650375184422; 
 Tue, 19 Apr 2022 06:33:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyny5RmHcL2mbVm8I+PvJJLONO+23YRsNsEl9fAKl0NIr73J24wL35Tq33t2C+DgjfmxE8aVw==
X-Received: by 2002:a5d:6c66:0:b0:20a:847e:10b9 with SMTP id
 r6-20020a5d6c66000000b0020a847e10b9mr12598291wrz.82.1650375184144; 
 Tue, 19 Apr 2022 06:33:04 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-96-237.dyn.eolo.it.
 [146.241.96.237]) by smtp.gmail.com with ESMTPSA id
 v2-20020adf8b42000000b0020aa790a258sm1535002wra.8.2022.04.19.06.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 06:33:03 -0700 (PDT)
Message-ID: <c7d700d8ae15a709424dd337ce459c50406c0a6c.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jeff Evanson <jeff.evanson@gmail.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org,  netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue, 19 Apr 2022 15:33:02 +0200
In-Reply-To: <20220415210546.11294-1-jeff.evanson@qsc.com>
References: <20220415210546.11294-1-jeff.evanson@qsc.com>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=pabeni@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH 2/2] Trigger proper interrupts in
 igc_xsk_wakeup
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
Cc: jeff.evanson@qsc.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 2022-04-15 at 15:05 -0600, Jeff Evanson wrote:
> in igc_xsk_wakeup, trigger the proper interrupt based on whether flags
> contains XDP_WAKEUP_RX and/or XDP_WAKEUP_TX
> 
> Signed-off-by: Jeff Evanson <jeff.evanson@qsc.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 36 +++++++++++++++++------
>  1 file changed, 27 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index a36a18c84aeb..d706de95dc06 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6073,7 +6073,7 @@ static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
>  int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
>  {
>  	struct igc_adapter *adapter = netdev_priv(dev);
> -	struct igc_q_vector *q_vector;
> +	struct igc_q_vector *txq_vector = 0, *rxq_vector = 0;

Since a v2 is likely required - see even Vinicius's comments on patch
1/2 - please reorder the above to respect the reverse x-mas tree order
and fix the sparse warning introduced above (s/ = 0/ = NULL/)

Thanks!

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
