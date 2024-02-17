Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0BB85B009
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Feb 2024 01:31:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A6D0540BDC;
	Tue, 20 Feb 2024 00:31:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id irMd7LecwEL9; Tue, 20 Feb 2024 00:31:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C3F040BD6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708389090;
	bh=F/IULp2vIFWvkqZhCRUdiMxN6SqvjUq/KC1PBO9UxLA=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=z10it/Nqp+7Rh91RpfMtRSt/4QOu44IM6tQxW86dTPi+DnOa2lKxHiYQBGtEeuUUl
	 1AIIoDXIYHAyqUvnFm+chR8rXTExj4LagvrJVKULtmLN7aZN6oM68xDM395tCze3XD
	 A0XyvqAjFWDw9bETuZVsXura8ZITrnwhr2CjF653zGFzeN8nuk3uXboyA2ahrFmWki
	 KeMWm6jMuDcHAo0/RseYMG6mnYNAnih/RKdncv1sz4gC3AomqL02xqASPsoZrm2vvD
	 iI6sI8axxIpG4/gFnqsEBMxNZ8StfiBJfZfuSBHXjNbtaoVlv2hSQlYXcL/d6VlaZ/
	 +iGcaXphNkT9Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C3F040BD6;
	Tue, 20 Feb 2024 00:31:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E41241BF20B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 10:59:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFB8A405E8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 10:59:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VfTnJ06p-C0J for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Feb 2024 10:59:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=115.124.28.62;
 helo=out28-62.mail.aliyun.com; envelope-from=wangyugui@e16-tech.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D0A88405CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0A88405CC
Received: from out28-62.mail.aliyun.com (out28-62.mail.aliyun.com
 [115.124.28.62])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0A88405CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Feb 2024 10:59:49 +0000 (UTC)
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.05184339|-1; CH=green;
 DM=|CONTINUE|false|; DS=CONTINUE|ham_alarm|0.178155-0.00516797-0.816677;
 FP=0|0|0|0|0|-1|-1|-1; HT=ay29a033018047205; MF=wangyugui@e16-tech.com; NM=1;
 PH=DS; RN=1; RT=1; SR=0; TI=SMTPD_---.WTST.Np_1708167583; 
Received: from 192.168.2.112(mailfrom:wangyugui@e16-tech.com
 fp:SMTPD_---.WTST.Np_1708167583) by smtp.aliyun-inc.com;
 Sat, 17 Feb 2024 18:59:44 +0800
Date: Sat, 17 Feb 2024 18:59:45 +0800
From: Wang Yugui <wangyugui@e16-tech.com>
To: intel-wired-lan@lists.osuosl.org
Message-Id: <20240217185944.28C9.409509F4@e16-tech.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Mailer: Becky! ver. 2.81.05 [en]
X-Mailman-Approved-At: Tue, 20 Feb 2024 00:31:28 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=e16-tech.com
Subject: [Intel-wired-lan] irdma of kernel 5.15.147 compile error when
 in-bracnh ice is placed by 1.13.7/1.12.18
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

When  kernel 5.15.147 in-branch ice is placed by ice-1.13.7/1.12.18
- ice.ko is OK to build
- irdma failed to build

In file included from drivers/infiniband/hw/irdma/../../../net/ethernet/intel/ice/ice.h:84,
                 from drivers/infiniband/hw/irdma/main.c:4:
drivers/infiniband/hw/irdma/../../../net/ethernet/intel/ice/ice_idc_int.h:14:31: warning: 'struct iidc_core_dev_info' declared inside parameter list will not be visible outside of this definition or declaration
 *ice_get_auxiliary_drv(struct iidc_core_dev_info *cdev_info);
                               ^~~~~~~~~~~~~~~~~~
drivers/infiniband/hw/irdma/../../../net/ethernet/intel/ice/ice_idc_int.h:15:43: warning: 'struct iidc_core_dev_info' declared inside parameter list will not be visible outside of this definition or declaration
 void ice_send_event_to_aux_no_lock(struct iidc_core_dev_info *cdev, void *data);
                                           ^~~~~~~~~~~~~~~~~~
drivers/infiniband/hw/irdma/../../../net/ethernet/intel/ice/ice_idc_int.h:17:38: warning: 'struct iidc_core_dev_info' declared inside parameter list will not be visible outside of this definition or declaration
 void ice_cdev_info_update_vsi(struct iidc_core_dev_info *cdev_info,

Any advice to fix it?
or any advice to update the ice driver of 5.15.y?

Best Regards
Wang Yugui (wangyugui@e16-tech.com)
2024/02/02


