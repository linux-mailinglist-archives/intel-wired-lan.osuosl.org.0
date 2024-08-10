Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5616194F184
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 17:20:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9EB294091E;
	Mon, 12 Aug 2024 15:20:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WNzENRK9vx7E; Mon, 12 Aug 2024 15:19:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A999840273
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723475999;
	bh=NsrGSuD1JwGElXKXCp9CKeDOTjJCIjAdbtMoFt9rIDs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KenEIs8i/6c8KPXzvCQEjLfk37PWhXt9au8oMKdd5wO4JJeLcgp7jJoUfN7Dmjl/4
	 k4VN9XWDWdLPViBsTI8+Kyc2KBiGmtFvheTnYELVVaO5ESOgjEdB/H4GN5WnM/cCzT
	 6dh5h0xBmAnQtOdFJkvCqXiRKbuexwOJ/PcwhSGYuBSoPqJLvc7aV+rK2GCmnt5ot2
	 TMMuAOYAqN8H/in9LSgKokU6ExrTNRZqVrryVAmoxM+Nx7lGP9DsoLlcKFeHOgstad
	 EsYjnvALqpvtl0dqNEkvEyjqXM6/awCdFuOeA06tFw9/wEp9A6HxJpa3Zhz0rvnKn7
	 AvC1ZnXj5/Icw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A999840273;
	Mon, 12 Aug 2024 15:19:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2600C1BF27E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 15:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2018C60709
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 15:55:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p-oZloXlr0d2 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Aug 2024 15:55:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::535; helo=mail-pg1-x535.google.com;
 envelope-from=daiweili@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 327DA6069D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 327DA6069D
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 327DA6069D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 15:55:15 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id
 41be03b00d2f7-7ae3d7222d4so2139912a12.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Aug 2024 08:55:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723305314; x=1723910114;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=NsrGSuD1JwGElXKXCp9CKeDOTjJCIjAdbtMoFt9rIDs=;
 b=Rf8k5pkKJcoihyEpifuMbw3uIT/1JUFdGe79apaaPTy7fWKqFtduM5MwhJjm6df5Z5
 1OZ4GdA9yaKrRc1WWsjBYIE78dn/kFOFAcfPXUXal3pdgdUc3Xhr3bFu5CCyOX89RbMc
 uhkQhG6YXiGuFRZbCY1LgC/ahSA3VwaSepu7sXOlDtNgpdtKfBokGom8pKmhaPuYabgx
 spf6trU3oQHvNZ4qgPQTKxpx8jDUrbuXV/nuhu//RR9kOKq3JdR1yLFYxLvNFTk9k+b+
 TCyJ+0UctupG825KMYhORybJ8dn9UtciTpnlnmqUZDTuaGvsY+MMeoT60qE4Y5zp0xBb
 bmBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUgUj5cd/os4L89ICd/j5hte6n4F9WTnRt9tknE2wxZm8TzWf7y9v9hbsgyKpLdx+yvnhypp6ddob7hq2SFtvfajNJRo+PKfaabH8MRenHU0A==
X-Gm-Message-State: AOJu0YzGWJu0SDWPLdAdglrS4xEBi5YT6pmSO2uUvafyxXMioFrxfAoS
 0COudJxoYmic99+nqAZbFBy7mbDyj+2i+rawfCLBfmB/G2DePsAMdmoWMEZENKi9nPGJjknglV2
 pYMSV0kyzU343HT3yxvAc+AnvU64=
X-Google-Smtp-Source: AGHT+IECdVPHYVoLR83HwZIQDHuvtWvM0Nkn2UqCCLm17o/8mmDQdCg8ENQpzWlF1lQprIstUWaHnBoC4oMIU4XDvxw=
X-Received: by 2002:a17:90b:3cc3:b0:2c9:8891:e128 with SMTP id
 98e67ed59e1d1-2d1e7f9594emr5591559a91.4.1723305314230; Sat, 10 Aug 2024
 08:55:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240810002302.2054816-1-vinicius.gomes@intel.com>
 <Zrb0wdmIsksG38Uc@hoboy.vegasvil.org>
In-Reply-To: <Zrb0wdmIsksG38Uc@hoboy.vegasvil.org>
From: Daiwei Li <daiweili@gmail.com>
Date: Sat, 10 Aug 2024 08:55:03 -0700
Message-ID: <CAN0jFd1CpPtid7TGJcgzajRXQ5oxYN1LjLjLwK7HjQ1piuZ_XQ@mail.gmail.com>
To: Richard Cochran <richardcochran@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 12 Aug 2024 15:19:56 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1723305314; x=1723910114; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NsrGSuD1JwGElXKXCp9CKeDOTjJCIjAdbtMoFt9rIDs=;
 b=ZkeJSnHMDaCkFbym51gHcCxMhFi6e0S2sZtFZ7Ojrmj495FbKoKrch4K0QWsEpgMxY
 O+P9WKLnWjgvTL0rV4r8C/ZxX31roiJZPESUKZnI9RPZqgBQciPxEJTLzKbJLPXIi7EJ
 Ed3ba6tVUBun5ZM+B4vlZT5efyCfi9JNC+mCi4rG0GI7un2CYkHgAStn5T90qmZhP/H2
 lVAy54c66xita9WHHxsavyu9s1pFcos/sDrFEDEM9agL9OItj+mT8wwiq65zlYcPUDAB
 DPfPpOQPLq9/BxISYawFeq4Gil9iwaYSUCMWlu6sFuV6pyCTQc375dUnSgBa9rwy+HoA
 /yBw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ZkeJSnHM
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igb: Fix not clearing
 TimeSync interrupts for 82580
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
Cc: sasha.neftin@intel.com, Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 netdev@vger.kernel.org, kurt@linutronix.de, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Eric Dumazet <edumazet@google.com>,
 anthony.l.nguyen@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> @Daiwei Li, I don't have a 82580 handy, please confirm that the patch
fixes the issue you are having.

Thank you for the patch! I can confirm it fixes my issue. Below I offer a
patch that also works in response to Paul's feedback.

> Please also add a description of the test case

I am running ptp4l to serve PTP to a client device attached to the NIC.
To test, I am rebuilding igb.ko and reloading it.
Without this patch, I see repeatedly in the output of ptp4l:

> timed out while polling for tx timestamp increasing tx_timestamp_timeout =
or
> increasing kworker priority may correct this issue, but a driver bug like=
ly
> causes it

as well as my client device failing to sync time.

> and maybe the PCI vendor and device code of your network device.

% lspci -nn | grep Network
17:00.0 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
Network Connection [8086:150e] (rev 01)
17:00.1 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
Network Connection [8086:150e] (rev 01)
17:00.2 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
Network Connection [8086:150e] (rev 01)
17:00.3 Ethernet controller [0200]: Intel Corporation 82580 Gigabit
Network Connection [8086:150e] (rev 01)

> Bug, or was it a feature?

According to https://lore.kernel.org/all/CDCB8BE0.1EC2C%25matthew.vick@inte=
l.com/
it was a bug. It looks like the datasheet was not updated to
acknowledge this bug:
https://www.intel.com/content/www/us/en/content-details/333167/intel-82580-=
eb-82580-db-gbe-controller-datasheet.html
(section 8.17.28.1).

> Is there a nicer way to write this, so `ack` is only assigned in case
> for the 82580?

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
b/drivers/net/ethernet/intel/igb/igb_main.c
index ada42ba63549..87ec1258e22a 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6986,6 +6986,10 @@ static void igb_tsync_interrupt(struct
igb_adapter *adapter)
        struct e1000_hw *hw =3D &adapter->hw;
        u32 tsicr =3D rd32(E1000_TSICR);
        struct ptp_clock_event event;
+       const u32 mask =3D (TSINTR_SYS_WRAP | E1000_TSICR_TXTS |
+                          TSINTR_TT0 | TSINTR_TT1 |
+                          TSINTR_AUTT0 | TSINTR_AUTT1);
+

        if (tsicr & TSINTR_SYS_WRAP) {
                event.type =3D PTP_CLOCK_PPS;
@@ -7009,6 +7013,13 @@ static void igb_tsync_interrupt(struct
igb_adapter *adapter)

        if (tsicr & TSINTR_AUTT1)
                igb_extts(adapter, 1);
+
+       if (hw->mac.type =3D=3D e1000_82580) {
+               /* 82580 has a hardware bug that requires a explicit
+                * write to clear the TimeSync interrupt cause.
+                */
+               wr32(E1000_TSICR, tsicr & mask);
+       }
 }
On Fri, Aug 9, 2024 at 10:04=E2=80=AFPM Richard Cochran
<richardcochran@gmail.com> wrote:
>
> On Fri, Aug 09, 2024 at 05:23:02PM -0700, Vinicius Costa Gomes wrote:
> > It was reported that 82580 NICs have a hardware bug that makes it
> > necessary to write into the TSICR (TimeSync Interrupt Cause) register
> > to clear it.
>
> Bug, or was it a feature?
>
> Or IOW, maybe i210 changed the semantics of the TSICR?
>
> And what about the 82576?
>
> Thanks,
> Richard
