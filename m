Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 856EC5F7C9C
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 19:58:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 356DD4035F;
	Fri,  7 Oct 2022 17:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 356DD4035F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665165514;
	bh=8xLgZKhedFS+zHXKNJEkV3Vfzmbi+fKNryMphPsfh+k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AcAW6mSBA9ALxYi3606Cb6GUkr5pnwwE9BiGOg33hE1rsO3bG/a2kONlHGPNX4g02
	 AUii7YrxdkRxvncAV8ieYMQWGJ2HJ8sWB2ACp/bgq6cU4bB1I9WqtYbvpcawEUatmg
	 V0UGFwBnFA7mIVP+Kx51IqhlByIlb5iZUr5QnldaQ5wrJTBpzXOgY/NMoO8HGTBOaX
	 I7dzIzTVxU7+DqUYa+CeXqRRKyz7MF7AQcoX3ZczQ5RJQgi4Gvpskzx85U6gS++6og
	 YkB5/SN9dbfmGYyi3VacKrJ5NQKDFNlTyZ58tC4vlKGWHHlnvC5P2rn7SJQFAZlM6i
	 Wb9W+tpEsMFXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NyD50CAEF60p; Fri,  7 Oct 2022 17:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D6BCD40358;
	Fri,  7 Oct 2022 17:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D6BCD40358
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2A21BF279
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A33A7606ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A33A7606ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n_LGGnHdzdcE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 17:58:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE93E6068D
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE93E6068D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 17:58:17 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id c24so5223503plo.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 07 Oct 2022 10:58:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZNXZh+wkxQvsN+sy9/sklJ6mToUmlREY0P3OOzk07Uo=;
 b=yWw9xY1XhJnAdOz5f3YlT3W6VHBJisDOjZjybI5NynSb59ccpgFDF8EagDYECTCP+n
 +iqwH0KJocBcaH3DXqmfGj07FL0fGM0TqR6xbkZyTsbaA2f5bFMpuKT3iQYkNZ5J7OH8
 RTsJR4uWY3/HH92n73hXpfZmQersgdZmjtJlptxWbJQkIKNJy3+dqgJL3/Flw943iuk5
 QkIIBVhP1G6CQboe6Td1V3EIMG2fjDEhQla+7DFoRPnDMyBa+iTyUhxTugZ0Epvvb7O4
 GtwHYgn2ydfOdCqkVCz0dQuUY+IFKOvqM0OHShZd35uGx3TKzjiTaCIZukM7y3IZOqmf
 L2ZQ==
X-Gm-Message-State: ACrzQf1/S9WxM6VtNggDVkn+r2xM7i0OE0ZOKptutck4MevSD6e8l+uT
 h2WZsMlhs3GvxI1LNxESaSHxqpmHoKCmLD+YjHx5CYX8bBWgPTaoUpcYwmCfZi8aY6vtdzARVA0
 1G0EM4eckPy7gOz9Sd3X84zwXBzMm2FXl32dhANXWXBLhn+p8TDFsj5WrqJmOZ6jKhZJPQj4ADR
 lwfe5stw==
X-Google-Smtp-Source: AMsMyM5yleUaF4pr4JrDZhfXS0NWhPiY3bnGEMIhceMWPKfw6O/0L88uPXFU/a25sOC7hdK9wBskjQ==
X-Received: by 2002:a17:90b:3b82:b0:20b:516:5ff5 with SMTP id
 pc2-20020a17090b3b8200b0020b05165ff5mr6476399pjb.92.1665165496995; 
 Fri, 07 Oct 2022 10:58:16 -0700 (PDT)
Received: from localhost.localdomain (c-24-6-151-244.hsd1.ca.comcast.net.
 [24.6.151.244]) by smtp.gmail.com with ESMTPSA id
 a29-20020a631a1d000000b0045c5a749a8fsm1937498pga.61.2022.10.07.10.58.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 07 Oct 2022 10:58:16 -0700 (PDT)
From: Joe Damato <jdamato@fastly.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  7 Oct 2022 10:57:23 -0700
Message-Id: <1665165447-1802-1-git-send-email-jdamato@fastly.com>
X-Mailer: git-send-email 2.7.4
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fastly.com; s=google;
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ZNXZh+wkxQvsN+sy9/sklJ6mToUmlREY0P3OOzk07Uo=;
 b=VpmyqtgSCX+R468R3+GsK6S1THG6VnwGvS0xd8UAEXYVtlq2qZTl4x625IpX0beHDu
 mbwAn960IF62AkDHZI0ewzqfPURo93ax1fhbxu21iLpp4pTxN76mPxG9B4MdulSottSj
 OmtwwEyhVu3oenVb+YdkyruZCLGdoFfp4EvNQ=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com
 header.a=rsa-sha256 header.s=google header.b=VpmyqtgS
Subject: [Intel-wired-lan] [RFC,
 next-queue 0/4] i40e: Add a non-XDP i40e_napi_poll tracepoint
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
Cc: Joe Damato <jdamato@fastly.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Greetings:

This is an RFC which is similar to the series up for review, except that
this implementation does not touch XDP at all and adds a conditional in
i40e_napi_poll to only fire the tracepoint when XDP is not enabled.

This should avoid the issues that Maciej has with the naming of out
parameters (since none of that code is touched in this series) and it
clears the way for Maciej, Sridhar, et al to implement the XDP tracepoint.

I am submitting this an alternative to what's already up for review.

If you prefer to accept this code, please let me know that you want the
non-XDP version and I'll submit it as the 'v4'.

Thanks,
Joe


Joe Damato (4):
  i40e: Store the irq number in i40e_q_vector
  i40e: Record number TXes cleaned during NAPI
  i40e: Record number of RXes cleaned during NAPI
  i40e: Add i40e_napi_poll tracepoint

 drivers/net/ethernet/intel/i40e/i40e.h       |  1 +
 drivers/net/ethernet/intel/i40e/i40e_main.c  |  1 +
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 49 ++++++++++++++++++++++++++++
 drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 27 +++++++++++----
 4 files changed, 72 insertions(+), 6 deletions(-)

-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
