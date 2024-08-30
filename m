Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD1966398
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Aug 2024 16:03:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0229844EF;
	Fri, 30 Aug 2024 14:03:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NyQTB2bOnz_w; Fri, 30 Aug 2024 14:03:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7515A844BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725026605;
	bh=kSSHatLyCMylznszf1VLOjKTVsfhKxIeTm3k28KJuXQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NNFP6PxENBBjFknoDuub/ImdFH2f8QWOiUjX+AKFmVyg60oULe1aKh3EoFl36R2/q
	 aUQMg3+DF2L2WdwTBHPcCXLzc0W8V1SuDTUpOCelx5U3dlhDaI9wO8WG48GXCmNtXI
	 vhxjeY2+luSNvtpRq8XcrePX9Mp44U/EtV2rCQpft+64nOyYJmdc7D4uzzefXlyxFo
	 LPPmXxxGkq1uKEmyIBplU1fG3NpkCHjuwnjTYuFFhSKEzXRk+jhF/YZjuo0H2BTYLd
	 WbZDW2NJA9wz/jp3H2if8sHNcfeS6iI4L+IVsVZFlaUXvCP0UV9Z7C23P7pIYTHilK
	 6espg1P4X2+MA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7515A844BF;
	Fri, 30 Aug 2024 14:03:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D86F01BF5B3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:40:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A4EE24117F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:40:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C7P8GMJk533i for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Aug 2024 13:40:03 +0000 (UTC)
X-Greylist: delayed 377 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 30 Aug 2024 13:40:02 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D3B1B4118E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3B1B4118E
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=159.226.251.84;
 helo=cstnet.cn; envelope-from=make24@iscas.ac.cn; receiver=<UNKNOWN> 
Received: from cstnet.cn (smtp84.cstnet.cn [159.226.251.84])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3B1B4118E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Aug 2024 13:40:02 +0000 (UTC)
Received: from icess-ProLiant-DL380-Gen10.. (unknown [183.174.60.14])
 by APP-05 (Coremail) with SMTP id zQCowABXPjksytFmcK18Cw--.19684S2;
 Fri, 30 Aug 2024 21:33:34 +0800 (CST)
From: Ma Ke <make24@iscas.ac.cn>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, shiraz.saleem@intel.com, david.m.ertman@intel.com
Date: Fri, 30 Aug 2024 21:33:24 +0800
Message-Id: <20240830133325.3439293-1-make24@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: zQCowABXPjksytFmcK18Cw--.19684S2
X-Coremail-Antispam: 1UD129KBjvdXoW7JF4rAFyrtryDKry3GryUKFg_yoWfZrX_u3
 W2vryfXr4DGFyFya15Ar47Za40kFyDtas5GFyIqa43tw45Wry3uas7Wr1rJ3y5GryqyFyU
 Cas7tryxA3yDKjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbfAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
 Cr1l84ACjcxK6I8E87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26rxl6s
 0DM2vYz4IE04k24VAvwVAKI4IrM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI
 64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8Jw
 Am72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAG
 YxC7M4IIrI8v6xkF7I0E8cxan2IY04v7MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7V
 AKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCj
 r7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6x
 IIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAI
 w20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x
 0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VUbQVy7UUUUU==
X-Originating-IP: [183.174.60.14]
X-CM-SenderInfo: ppdnvj2u6l2u1dvotugofq/
X-Mailman-Approved-At: Fri, 30 Aug 2024 14:03:23 +0000
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=iscas.ac.cn
Subject: [Intel-wired-lan] [PATCH] ice: Fix possible double free in error
 handling path
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
Cc: netdev@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Ma Ke <make24@iscas.ac.cn>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When auxiliary_device_add() returns error and then calls
auxiliary_device_uninit(), callback function adev_release
calls kfree(iadev). We shouldn't call kfree(iadev) again
in the error handling path. Set 'iadev' to NULL.

Cc: stable@vger.kernel.org
Fixes: f9f5301e7e2d ("ice: Register auxiliary device to provide RDMA")
Signed-off-by: Ma Ke <make24@iscas.ac.cn>
---
 drivers/net/ethernet/intel/ice/ice_idc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 145b27f2a4ce..5db05f54a80c 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -330,6 +330,7 @@ int ice_plug_aux_dev(struct ice_pf *pf)
 		return ret;
 	}
 
+	iadev = NULL;
 	ret = auxiliary_device_add(adev);
 	if (ret) {
 		auxiliary_device_uninit(adev);
-- 
2.25.1

