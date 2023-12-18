Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3443B817875
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Dec 2023 18:20:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C1ADF813F1;
	Mon, 18 Dec 2023 17:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1ADF813F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702920039;
	bh=LAYUfcf+q6NFBf1W2LW/dEX42QQ7bBEVkrDxJ4ojnAY=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=BR8RWTP6JOmKO3HVPzYTPz4+qSyw3FqZIFc3c7j3sP4BhOYKaBm9LD2lE0OMJ7Iyn
	 baoGYF4N3ncmHUsBi2dz2ocWGOnFlLekvHm0T0c5hhmevovdviWtr1gXZGtOxQodpb
	 CpVvly0b37Z/liuLMXIjVdeHJnAiGtqpcqiQIuJ03HA3AlgTXRcFhTrAxOAeL5O1P2
	 wPv7fX78938e2lW9RyqFj6zc8x4vh5LN0CLSz3dpNV3iCPHJujl+ieyYMbBxVwVzpb
	 z/4pfqR46pppmZEJQK7rpWejnVp3Lj0U5G4hZFDuxY5VAQWk7kQZkEZRvAg5eVV0+a
	 3PG1HLyVGNlMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jYLsTNSbiszZ; Mon, 18 Dec 2023 17:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4FEE813B3;
	Mon, 18 Dec 2023 17:20:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4FEE813B3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B8B5D1BF20B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 17:20:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9D515408E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 17:20:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D515408E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxRHGLmvRWZN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Dec 2023 17:20:33 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC9ED40876
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Dec 2023 17:20:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC9ED40876
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id D1300B8070D;
 Mon, 18 Dec 2023 17:20:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 002DDC433C8;
 Mon, 18 Dec 2023 17:20:29 +0000 (UTC)
Date: Mon, 18 Dec 2023 09:20:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: netdev@vger.kernel.org, netdev-driver-reviewers@vger.kernel.org
Message-ID: <20231218092029.74f4da59@kernel.org>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1702920030;
 bh=rvJ5CLJgsHd9YYgMPyEd4ePrIvDQgr+6tPH0RQrXuSc=;
 h=Date:From:To:Cc:Subject:From;
 b=i5R5VxitlY4ZzE0lwIEBSWfDP+Yex8qmh6xH2LNNeNfqfajWP2f9DbTkjRRywLxuU
 osWaKrtk8gBd1JhmcmqEneTRAeNcgYvrL2TIg0OYQRQHaeXsNml7FdGMLTprcz1uMH
 xemSafNP3NPDdAneqvBigvCbSdGqL2TG09t/p+VLanDcW+z79AowkE7cV4BMRigBYo
 aZGegyaleHh+0SclOdse5fIbFKuDcOtf7iLfdS9KWgkAm6Bjw/eK1PQKcfMwc72BDb
 tYMha/JhHg1oXqcjlJIUZP/c9OdQU1CY4+3d5669FLfbuvPgk4uIYnNzttanAxBbVO
 /YZHryG91xgYg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=i5R5Vxit
Subject: [Intel-wired-lan] [ANN] no call tomorrow
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi folks,

many people are on winter break already, so there will be no netdev
call tomorrow.

This weeks reviewers are: Intel

Happy holidays everyone!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
