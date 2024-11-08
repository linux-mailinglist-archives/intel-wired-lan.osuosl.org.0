Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D8929C27C0
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 23:47:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB2D161393;
	Fri,  8 Nov 2024 22:47:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id muQWVakQzS0T; Fri,  8 Nov 2024 22:47:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 518A060873
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731106068;
	bh=VnTy8Ymld6PWGqNkIsUp5y9SHPVeKPsTumf3gOQ2F/Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KcQuPTJdtC/N9SO7qvNInVce/w7Vfg3lQnYzZBVGYOHCACF1iapqVAhpQc+wsZk5x
	 M8Wp+M6P4AaZ6BPgZr7hO9E7EyNZ47kB0JXbNy5Jx6gI+TPXoRjB01yoC5NUbU+pDE
	 QpcinYHLkznTZJtqN3B4V/cT/6nHczsRmxFr98TQN+bM8rmcE/RhKLrIvDFiDWslm/
	 ZO05+pbzlnWfXEiGF8ynPFsvAIYXVdblpuLsQ3fxaFQKW9wkEb0uM6EeeG45Ph78uk
	 OD+g5WtZWD5azhhWP6IDwmtMjCzoOK1BybXgFn905YrSot40ldapwa9G99ox0OUyUd
	 Jd9/MsavhsWoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 518A060873;
	Fri,  8 Nov 2024 22:47:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 88D52978
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 22:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6575D60873
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 22:47:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VHWyKzy9Fs79 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 22:47:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D7F0E6062E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7F0E6062E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7F0E6062E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 22:47:44 +0000 (UTC)
X-CSE-ConnectionGUID: g7fN2sd1TsmEQP4aO5ezcQ==
X-CSE-MsgGUID: So+9Gf8WSACTZrcBTZOa+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="31105539"
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="31105539"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 14:47:42 -0800
X-CSE-ConnectionGUID: rP0PI1asTwKVUCFuDl42vA==
X-CSE-MsgGUID: +edUZBEmTsWwXfQc2V0wRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="116588587"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.244.154])
 by orviesa002.jf.intel.com with ESMTP; 08 Nov 2024 14:47:41 -0800
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Paul Greenwalt <paul.greenwalt@intel.com>
Date: Fri,  8 Nov 2024 17:36:41 -0500
Message-ID: <20241108223643.2614087-2-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20241108223643.2614087-1-paul.greenwalt@intel.com>
References: <20241108223643.2614087-1-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731106065; x=1762642065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zI2seVQ36Z17HKry9NEbWVGjSVWlDSdTWKKIMKpDsKc=;
 b=TRRncO8iMOat8DLZThOYvY3JSWkPFrQRYXoJay4yKdrxjkzPNfPDQdBZ
 p0GyVLYxvT0ughRShNEzVUxcK8TMnvrWtDU8jZabcXPJu/14GH/JOI2bf
 B+H5Jk6LPvCOw1OyUoMSwBuF4KkN21fcqjj51DxM8KyNW4STXCze1gvrV
 jyrOyWu9pzgm24X1FFaIeZrNSXnPkqHy1PJY4dyA+yKWopek+hfDvHFGi
 nHSBqpkXXoa0z9PyFlVpjUkTC1Fy3Bh/2Qw3NGL7S+bYNmjf6PXnEeeCO
 2MZTOcP/q7h28gNSdjSWnK+upTQPre7+8rcRr/IZq/C5smS0pth1/OvCz
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TRRncO8i
Subject: [Intel-wired-lan] [PATCH linux-firmware v1 1/3] ice: update ice DDP
 package to ice-1.3.41.0
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

Update ice DDP package file to the latest version: ice-1.3.41.0

Highlight of changes since ice-1.3.36.0:

- Add support for Intel E830 series driver using a dual segment package
  with one sgement for E810 and one for E830, which increases the package
  size.
- Add support for 192B max header length.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 WHENCE                                        |   4 ++--
 .../{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg}    | Bin 692776 -> 1352580 bytes
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename intel/ice/ddp/{ice-1.3.36.0.pkg => ice-1.3.41.0.pkg} (50%)

diff --git a/WHENCE b/WHENCE
index ff5b05f4..24d85bcb 100644
--- a/WHENCE
+++ b/WHENCE
@@ -6498,8 +6498,8 @@ Licence: Redistributable. See LICENSE.amlogic_vdec for details.
 
 Driver: ice - Intel(R) Ethernet Connection E800 Series
 
-File: intel/ice/ddp/ice-1.3.36.0.pkg
-Link: intel/ice/ddp/ice.pkg -> ice-1.3.36.0.pkg
+File: intel/ice/ddp/ice-1.3.41.0.pkg
+Link: intel/ice/ddp/ice.pkg -> ice-1.3.41.0.pkg
 File: intel/ice/ddp-lag/ice_lag-1.3.1.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
diff --git a/intel/ice/ddp/ice-1.3.36.0.pkg b/intel/ice/ddp/ice-1.3.41.0.pkg
similarity index 50%
rename from intel/ice/ddp/ice-1.3.36.0.pkg
rename to intel/ice/ddp/ice-1.3.41.0.pkg
index ce5dbf41f55750742ecc12ffca896f790240753a..71e75a5d78365ae4a23bef57776e835e5009bc29 100644
GIT binary patch
delta 10238
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
O0t!8OB7wn@_5T3IQadXE

delta 1433
zcmZoU9<*YKmOLW^0|OfnD*$l`5Z?e|4?_lq9f=GK9}2l9YU?wqOpMlLOqtjj#$sf|
z#V}c#(Ug+~sEQegYo{x2Vb-6%Ac~7+au1^dGY|Xo&FdL+8SBeL*bZ@|C^}@lUHf~Y
z&0*gA`gZxXZ|+Q)_NGib_{{Xq&67)J?pGDu=aF=JF3W_vv!Bf0-T2L1xjOxzvC|7t
z4X&ReUAv#=9^`MAx~f`w<Lh!G_nJB8KGAt@jQ1|LnpVhnH|#c-+K?CKm$-4;-q44R
zX|leXK40IGv+Yhn)lU}j`uD6t!YA%e+xf%tUP@x&zmGjK&#dIVTqM7;y?XYKb#l)X
zk9(neU)JTB>=T>Aq44A5N38=3Z6yEnOqSg6L$30G;?{Jn30IY_3fr3)%(P)_-D@PX
z*?tB8{E6G|T=fipb<^ta3C^;Avx|N|e-ayX{k*7frnt+lMVGc3f4S{+^1u5!qg+p5
z=%9eKt#aWDB|mc7vxsc34^%t1OX}14H@l|&;$UEVay@tRJ5WgGY<5`oghwIMu)os&
zyFm)??!e0~y)EtcUae%TY~0mV;2wI_%=HKR<~@Qe3RvUdkD<V1mBj+!c#t=G%UJIb
z$iG+6bd})qxSJm3Cl8o^|0}L&<jnsxa`}~Jhszrb19$nFM@Ze!Oj`HJIQX?wgP>cl
z;w_EV53QCSJA`hz*mt{%es}h2c-Q=KON<`>>Tj(3x&NK7U(jInIF9M`*R#(}mu&W$
z*}bU$pt!`0f+UtT_l+3Y)b80Rb9VU7crCHEKD}fHr_ySRqzkHkNlxkyS^s<1Hyt?h
z)R61SvCE>%KIR@z70TpoSfM(HnXOTpUGKtAh6|yeDoS4^M)DLonk_q9H`STxc=U1Z
znk%!Lb5#;dwI;6jZVKu6w$uLXjPn=NoVI?-ye?27R~7EHBKEst+rFQbs~fMKWV8J5
z=OpsE@k6~0yU(5g{VMM)-#Yy{RtqmJzkK}U-F(5-if5f0+9&5uzTWG+_DV(ISJ%zU
zTTga=KYi`<_w6=IHtX6&g!!H0jx&#T6TG$4!sVQQifG%?SxJliju$Lh===2$^NsW2
z`U(Bn9j>2$`tFz^DP)t`Wzwwh`DAKH!NSg6n>bkKB^WHwbzPETi;@b!oRcPpl+vG^
zHUDu(`}5tTn6S&<E_*z89@(U(yG3qV+~dIh#9oGQtv4mJF39fJ&IsB7N*Y<fq;Z6M
z@*hV5gG+lKmRB;hT$;9RX=JKn%&rs;;h9=BCFTD9rzL{#?w)kKezSka*Ez)^`4_e0
z7O&ObY~yr5e)63~5u@3YUfJ`4{AQ8Ma;!`$3=<P%ngedM2i#x;VkRJF24WT<W(8t4
WAZ7<*j_m<AIFH=g?$az{p#T7%I(*sy

-- 
2.41.0

