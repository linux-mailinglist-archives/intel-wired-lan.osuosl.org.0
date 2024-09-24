Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6444984C84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Sep 2024 23:06:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 692224246F;
	Tue, 24 Sep 2024 21:06:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m-cizZQj9pRV; Tue, 24 Sep 2024 21:06:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3385142464
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727212010;
	bh=2cOSRCTldnYmAEoOT+PgzbC1WcHMLOlX9r7cKBA/cm4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0k5ER1ygWaMu3BjSGuWipPp0pg8pDuCVuTHUCMC4ncrCADb9IGTE+8Oc7mh18VNq8
	 CJJv8hosiBkN2lTfSV4pSPEBVd5KJxcBLWfYFQDkS5HdXCp2fKt8VGMHj381ro3tn3
	 NeiQgk82RBQF+yCc22ou4ZtwRqSCDdG+V33hggDIFPIBnjMQB/z+bHisBxV0NvpJRq
	 pCGTyAhJZX3OuEfNWTKqAo9wEf4ovC37mZEth8A0rLGLUJZueJZCHF6agZcozEuov3
	 P3mny+MAGO12fgaS+INrpS1TgJI8SJnqJn4YW5EXPWaXHKHQSoKrZCL0WXZtH5p7Nc
	 dpqF6jyRxpQwg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3385142464;
	Tue, 24 Sep 2024 21:06:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DCE51BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58E5A80B5D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:06:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i84ezhTxv10g for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Sep 2024 21:06:47 +0000 (UTC)
Received-SPF: Permerror (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::636; helo=mail-pl1-x636.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4620F80B5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4620F80B5B
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com
 [IPv6:2607:f8b0:4864:20::636])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4620F80B5B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 21:06:46 +0000 (UTC)
Received: by mail-pl1-x636.google.com with SMTP id
 d9443c01a7336-20afdad26f5so278965ad.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Sep 2024 14:06:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727212006; x=1727816806;
 h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2cOSRCTldnYmAEoOT+PgzbC1WcHMLOlX9r7cKBA/cm4=;
 b=aGWdVSBwzZcVLG8TtFWTE58iQ9weOAuWh+/UOWtdTrDesZ2dZpO1UuZeWC+ZLRmFld
 9H8ITpnZNaMeuoz2R6Q+FdBquAo7witnVe8XFQgZcEKCt+ksYnDW53dRmTUVkTvyilsI
 ticCF/cxCX1eSEuy5AlPw4aOfpGWZqLAtf+hGAsk4QANwEWJKw/789q2rEl5kr16RmGB
 EhBrJHIoQRcv+ysn7+aXvCoo4L+P6/cFz2VtTUjxLgdH2UJy9YjzjZ5ZC9JI2cCzO8Hc
 plWIXBFMMBJYxSSZBXiV4BzG3LLLqKIE3XydyI69IO9UrWdYURmHqn9OUyLgKg0LfYkv
 3BFg==
X-Gm-Message-State: AOJu0YyiTjzlQs3/SrmeynBlxjqBKg69hoARJcy87SwpsTTq/EcPATdU
 ax9VC++OIFE88hEEUUEL6wfLp5+28YoaYlbmkjCiY5vh5eN8zmhC49Oif4O2uIA=
X-Google-Smtp-Source: AGHT+IGhyzhT4ItbLkXqJFOEF/QVw8PfECiY10lnETHANlsD8HmM/Se5SFVUhHSAQcwZL7gQfWEuoA==
X-Received: by 2002:a17:902:f60c:b0:205:826e:6a13 with SMTP id
 d9443c01a7336-20afc5f07damr7240965ad.54.1727212005646; 
 Tue, 24 Sep 2024 14:06:45 -0700 (PDT)
Received: from dev-mkhalfella2.dev.purestorage.com ([208.88.159.129])
 by smtp.googlemail.com with ESMTPSA id
 d9443c01a7336-20af1818f69sm13717095ad.184.2024.09.24.14.06.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2024 14:06:45 -0700 (PDT)
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Jeff Garzik <jgarzik@redhat.com>,
 Yuanyuan Zhong <yzhong@purestorage.com>,
 Auke Kok <auke-jan.h.kok@intel.com>,
 Mohamed Khalfella <mkhalfella@purestorage.com>,
 Simon Horman <horms@kernel.org>, Ying Hsu <yinghsu@chromium.org>
Date: Tue, 24 Sep 2024 15:06:00 -0600
Message-Id: <20240924210604.123175-1-mkhalfella@purestorage.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1727212006; x=1727816806;
 darn=lists.osuosl.org; 
 h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2cOSRCTldnYmAEoOT+PgzbC1WcHMLOlX9r7cKBA/cm4=;
 b=B7iJh+r+q2nKV1PQWDwEDPOYISMCy9EiOSNFWrx46NcCZdcln+GHRJRQCINa5NfbGj
 vhREqClXI7aVhFTbrrKpQvbFgAs9KZ8rtJwTRUVXI6TzkkWMUI/Zdosy57ZPhbv84ZUW
 CI+pNS/Y5mFJKEgcLr8GRv6Dk8Gm/RhxeJJvRmUN6bI1EVQmJHU+F3OB4qw61VaJnwHc
 ZJWP41mO3hfiTVzDYlQYfiMfKEwbGjRVDHyF3fvdl76cgxWCzsFZwdOXDaC3e4nSNwm0
 Xy5Z0NixZDtMlHwIY7HoRIzmz6JgL/qso6vU69Oqby7+41WPHvooIn9vhqc6lB/xuvHt
 80sQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=B7iJh+r+
Subject: [Intel-wired-lan] [PATCH v2 0/1] igb: Do not bring the device up
 after non-fatal error
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changes:
- Changed dev_info() to dev_dbg() as suggested.

v1: https://lore.kernel.org/all/20240923212218.116979-1-mkhalfella@purestorage.com/

Mohamed Khalfella (1):
  igb: Do not bring the device up after non-fatal error

 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++++
 1 file changed, 4 insertions(+)

-- 
2.45.2

