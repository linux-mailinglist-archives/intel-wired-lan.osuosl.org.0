Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC7F20CD94
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Jun 2020 11:31:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94D7D884F6;
	Mon, 29 Jun 2020 09:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mORDaYX5kA+z; Mon, 29 Jun 2020 09:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6BD58882D;
	Mon, 29 Jun 2020 09:31:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F36A71BF38D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE99888915
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u2IbXFIjaMXq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Jun 2020 09:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7F358888D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 09:31:13 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id j12so7648253pfn.10
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Jun 2020 02:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ld538JaKDXIGo10uVIPf/OU9ypVMHtMKsndOQ0uoERY=;
 b=kNVV8i+/97Zn5s/MHxIAt2QNER/BXTzL3YDs1qt3DOpG5XCX9RXz4wHmmN94H4DwkU
 M4Q0UuZJp/0kinhl4WxCtg7mewPv210DRtDVqjPKOY/XxfNtT0yRUsHMVT17dMliME1A
 k1yZh2RgyG5uhLj91imY9haypvx73lMIct0B78mnsGKgPMbqpWshBN6mCMzJ4DxSqqrA
 0e1LosaeH0fKz5NeWHnV73cfBwtWZXMfQWGR2lkdYI02wRq/A8jrJQ/ZZ+yWlW6F0GH3
 3zxdkuWiMu9miFniSuZM7WE0K9uvwTGKj4JhR8BeVctJuIy0HIJZ/+fzmzjymQ0kNFi+
 n/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ld538JaKDXIGo10uVIPf/OU9ypVMHtMKsndOQ0uoERY=;
 b=PW7vCJ47NPHQIcONpReDtGw9yH00Y1xaJz1v+wNKmgnUKLt/DEczOfGFmvyU53zGL4
 L106HrScnx+hsFE6/3NVv6v4fGbfC766HIukQo6ov04DHpySLlN0MfWOzkSOEo4e8PBn
 98euzXfNSqJR5PoMR6NfY/Ap5PAltEXeyYXIlgtsGabExOEdafsMOCwQV74ppyF1VnYi
 I22rOdzwi41R0GsrN8VN+TCZ0/UwOt6lnLsiAP1ZeyPqvGMka4ptz9L8ELV7JGDiYM4m
 AO/GpgKoz72JjokpvysPTCh89JAh0bUMHQhPA43Wle3dj/uyTbEjc/t1OlZ+pT2356q7
 00Ng==
X-Gm-Message-State: AOAM530L01n8MXNQm/a/MEDxmXttUURl2CjchNgKDKkQouqxpiAI62y6
 Pb4akgKUqGi+jf0OOk8l8uw=
X-Google-Smtp-Source: ABdhPJzg4uMdcuYxGKzmX4AkigvWMPMBvIUAccjNVi7bKO3S0bEG3v2GQq16Tqlxe/ePLRLJFpEoaA==
X-Received: by 2002:a63:fc52:: with SMTP id r18mr3397847pgk.334.1593423072881; 
 Mon, 29 Jun 2020 02:31:12 -0700 (PDT)
Received: from varodek.localdomain ([106.210.40.90])
 by smtp.gmail.com with ESMTPSA id q20sm2921286pfn.111.2020.06.29.02.31.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 02:31:12 -0700 (PDT)
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 bjorn@helgaas.com, Vaibhav Gupta <vaibhav.varodek@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Date: Mon, 29 Jun 2020 14:59:38 +0530
Message-Id: <20200629092943.227910-1-vaibhavgupta40@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 0/5] ethernet: intel: Convert to
 generic power management
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
Cc: Vaibhav Gupta <vaibhavgupta40@gmail.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 skhan@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Linux Kernel Mentee: Remove Legacy Power Management.

The purpose of this patch series is to remove legacy power management callbacks
from amd ethernet drivers.

The callbacks performing suspend() and resume() operations are still calling
pci_save_state(), pci_set_power_state(), etc. and handling the power management
themselves, which is not recommended.

The conversion requires the removal of the those function calls and change the
callback definition accordingly and make use of dev_pm_ops structure.

All patches are compile-tested only.

Vaibhav Gupta (5):
  iavf: use generic power management
  igbvf: netdev: use generic power management
  ixgbe: use generic power management
  ixgbevf: use generic power management
  e100: use generic power management

 drivers/net/ethernet/intel/e100.c             | 31 ++++------
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 45 ++++----------
 drivers/net/ethernet/intel/igbvf/netdev.c     | 37 +++--------
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 61 +++++--------------
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 44 +++----------
 5 files changed, 58 insertions(+), 160 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
