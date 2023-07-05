Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B8D74879E
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jul 2023 17:15:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 610A961088;
	Wed,  5 Jul 2023 15:15:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 610A961088
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688570134;
	bh=3vHnYCATQyDRcJfoIpmXRSpKdnXNJl0dovJJh7VizNA=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=iJVQHF/6CHLRQfvjsP/3+QU+McKMu7W5tBgPA0zFbAUC3O2fXRb0FwhfVNAJFOhVD
	 OKpPeudisf2ZySWWiFr2vG5TfPUD8CfMctnno73KHxbTodBjmJulYVulzxtGH0KIgX
	 ZfzuNlwrJP54NqxMnZMVasOZc7FWtb423IgD51ydAOtW+v2wsA8CsZXyCn+qIo0H3R
	 5FmV7/uOgzL6vOuBA1vLKSmk7h5AnK/cN/zRmphEiCu2mE26LmLakWSQWyDm4TGB3V
	 flmxI4Mx45MUYeh7PSQNesbZGFNzlHb9Gz3f4DUfx8XWm6HKrqcCSEcPD6kx/Lxola
	 5XJXqJwrMRiLA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bcXBVh7L5wd; Wed,  5 Jul 2023 15:15:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E2B36106A;
	Wed,  5 Jul 2023 15:15:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E2B36106A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B52051BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 00:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9811840950
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 00:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9811840950
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LewYUGvX1aqL for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jul 2023 00:26:12 +0000 (UTC)
X-Greylist: delayed 00:08:02 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42E5B408CC
Received: from mx5.ucr.edu (unknown [138.23.62.67])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 42E5B408CC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jul 2023 00:26:11 +0000 (UTC)
Received: from mail-wr1-f69.google.com ([209.85.221.69])
 by smtpmx5.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 04 Jul 2023 17:11:02 -0700
Received: by mail-wr1-f69.google.com with SMTP id
 ffacd0b85a97d-3141325af78so4055017f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jul 2023 17:11:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688515861; x=1691107861;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=3Cx88c8TooVAgvxbbV7gir3Kl8V3dsEGMmFOU/R0Gkc=;
 b=VPGTgglCdUJIbiY7fey4/ZjN7bLcCdoNF86xo17QkQPxZcJzm3I+/Z9lU6NiqsxAuV
 hzPEyftU2N6xl5fvH6FauvYmxcJ8sRHY6GvZx5Ps+vE52k9b/m3TjEi1Sf2ucDrFGf/H
 CpSaBhAucDf/l5DZ4SlfcDmhHhkwS+r14/+UF76e8jkJXKkT3EoPzYtwIe1+wdjnkuXE
 wjp0p5+N3+ly5ZZg4hlI4LzWKlqREVMysoHykg3ZLGzTKcN1eFXZML82roAEK+A3NeDl
 ymnDe4+XQjmsZmofUky+fT3LNEC0lnIh8sYTsTKeCsI51xjy56E+0LRk0z62wEqp7IP8
 4bVQ==
X-Gm-Message-State: ABy/qLZ8GiGEFz2hnCqatfstA6/lmjnI8FS8bne/GWRv+Tm5pm73tUb4
 0/sha9aMTJQ2+8aJbZvd+0nC+eQ6pDCOzQxw15gtODzi9Cv8e1wtFYeWW1XMSvHz+i/EU+DCwWg
 otWLEZPT8osL2jcJzXjsYE/ciFBi8g9QTsHUlXm/c5liR/Nc=
X-Received: by 2002:adf:f504:0:b0:314:f18:bc58 with SMTP id
 q4-20020adff504000000b003140f18bc58mr13506738wro.58.1688515861123; 
 Tue, 04 Jul 2023 17:11:01 -0700 (PDT)
X-Google-Smtp-Source: APBJJlFqjXkpHddsxxifSXjJ5i+5FdCHTLPsSKeVVQZ6XLfHIVa778JXLVbCsBJ2trBYzxWgtJBg0GkROtqXVmUc5wA=
X-Received: by 2002:adf:f504:0:b0:314:f18:bc58 with SMTP id
 q4-20020adff504000000b003140f18bc58mr13506718wro.58.1688515860688; Tue, 04
 Jul 2023 17:11:00 -0700 (PDT)
MIME-Version: 1.0
From: Yu Hao <yhao016@ucr.edu>
Date: Tue, 4 Jul 2023 17:10:48 -0700
Message-ID: <CA+UBctC57Lx=8Eh6P51cVz+cyb02GE_B-dWnYhffWoc-nm7v6Q@mail.gmail.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, 
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-Mailman-Approved-At: Wed, 05 Jul 2023 15:14:37 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1688516772; x=1720052772;
 h=mime-version:from:date:message-id:subject:to;
 bh=qJGV4Ihn5aLv2rzCYISjNoN3t4WUUgPb+u7XyG6brjg=;
 b=KVWc4aPfpGZ0ZmUDs36wudaSCaTPnqUfdb5/hEARjS24jjSUO58U0n+l
 cJwVz0qqho4KO5b/YitbRKIhjfPtQstFVhMrn+DsK6Up7nOFYeyEqwENw
 e6UytP8lCotG06645og34jSEncB4Hb5ldN56HMZ6m6vTAMaP39580XaqH
 0VLEMObRjSMWOYFmLMs3DQeCRFvj1UCZJuH7cAwg4GNR2NpUm2SerLqLB
 DinKcN5ne3kCWGH7rFv3BXM9NyUevypYm+WMGlskiXDqPLvBg4HTfXbv9
 CTsVGe6DTGAZ3oZQ2XbW8xQJVmshL1Z+mvwN5GlHUDYofZ7fnpV9yrn2M
 Q==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ucr.edu; s=rmail; t=1688515861; x=1691107861;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=3Cx88c8TooVAgvxbbV7gir3Kl8V3dsEGMmFOU/R0Gkc=;
 b=eqOVJ+ZIOAlOzUY3CyGT14tTXLweY+Fl2hm4x/JqtOQOq58R88a+ORK0eiYgletc2t
 iiw4xghVq4+6/tZGjuCUGm1so6PDuoYsGBVAKNDw3EXuZnHBTSklAJx5ZsJGC4m07/+E
 pfelACY5IEEN71veledD0Z3U17h3Oh6KbgpXg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ucr.edu header.i=@ucr.edu
 header.a=rsa-sha256 header.s=selector3 header.b=KVWc4aPf; 
 dkim=pass (1024-bit key) header.d=ucr.edu header.i=@ucr.edu
 header.a=rsa-sha256 header.s=rmail header.b=eqOVJ+ZI
Subject: [Intel-wired-lan] [PATCH] ethernet: e1000e: Fix possible uninit bug
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The variable phy_data should be initialized in function e1e_rphy.
However, there is not return value check, which means there is a
possible uninit read later for the variable.

Signed-off-by: Yu Hao <yhao016@ucr.edu>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c
b/drivers/net/ethernet/intel/e1000e/netdev.c
index 771a3c909c45..455af5e55cc6 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6910,8 +6910,11 @@ static int __e1000_resume(struct pci_dev *pdev)
    /* report the system wakeup cause from S3/S4 */
    if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
        u16 phy_data;
+       s32 ret_val;

-       e1e_rphy(&adapter->hw, BM_WUS, &phy_data);
+       ret_val = e1e_rphy(&adapter->hw, BM_WUS, &phy_data);
+       if (ret_val)
+           return ret_val;
        if (phy_data) {
            e_info("PHY Wakeup cause - %s\n",
                   phy_data & E1000_WUS_EX ? "Unicast Packet" :
-- 
2.34.1
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
