Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5D298A575
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Sep 2024 15:39:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 900CB404DB;
	Mon, 30 Sep 2024 13:39:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sqXlWjuJXTXA; Mon, 30 Sep 2024 13:39:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90B0A4052D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1727703555;
	bh=CI7WR6uwwAJhA/Bvh7jVU7929c52PfZ9AJXEU/bDGPA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6Doc0ZmzdbBTUs1vxXhFOWwuGuA702dr8a8JI0qH8brObxtPEm5Ong8KXU4I9Hj8/
	 j741fuIavOdhxljaVZ2PoJjeBILZr40zEs6ARHJRPbzOvM6oJvoYiGRin9L7kNSbke
	 BpjABo3roQ7N6kNJfFIeQ/QM9dcG2x6iiYd3eE7+7VA2/yGyBDvCi2Mfn+wvfvdjUa
	 wjJBr3Labw46VsrDRwwzeh48OLQOVmj2s9LCS0kfOycpVxMBawL+5h6kSTYAVD5H7Z
	 BiNDttB8eBLg/uq/B7EDIdMTTNw9PGukZL2PGgk4njvJM/rofXBnoXV6BTFqwI3byR
	 EZl6Mgl61+vjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90B0A4052D;
	Mon, 30 Sep 2024 13:39:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E4361BF300
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 68FDA40118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PCERJqOa7tDx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Sep 2024 13:39:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 66AF6404D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66AF6404D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 66AF6404D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Sep 2024 13:39:12 +0000 (UTC)
X-CSE-ConnectionGUID: /iAz04YPQE6y+o8Ptcgt7g==
X-CSE-MsgGUID: Gale1ZYITTW38e3/ZiFI/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="44312439"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="44312439"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 06:39:12 -0700
X-CSE-ConnectionGUID: GUG5EYWxQRmBQUp42l996A==
X-CSE-MsgGUID: ZQb5fdVFRLCzfhXG7NFVag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="77831847"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa004.fm.intel.com with ESMTP; 30 Sep 2024 06:39:09 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 673E328169;
 Mon, 30 Sep 2024 14:39:07 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Date: Mon, 30 Sep 2024 15:37:18 +0200
Message-Id: <20240930133724.610512-2-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
References: <20240930133724.610512-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727703553; x=1759239553;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NJhYW5MdDUlRWkUHgJpWUneYsgOxetOfQxKhtwQwTQM=;
 b=b9g4YVpm++hDKruwsIgbGuHNNqSar8vWt9EdSGVzL3mgcdakIRIXHfow
 fqKU1/2GfTw7Ja0z1G/zrhsW2AA1zZRXWzSkXbTBNOGJBS50EJy8NuXqh
 RWZnKvrQ3XBIWHQojKYXgRPjOjkHusnvdqYP+UjEQIMmOkq95rU3H7220
 h9+QwMQjiEmbTWbW3N23DN1EfTZh/oEx/mO2mqxaiemkGjY0+s5TEfj35
 wDFUdcutReN/mhLOIf0f/HjefzYB9erVf8cyWOE5lz9L7GBqyfI3UsgzU
 sjk7l7RYWcfa0bhnCqm4/umQkv+pCE0vS/OT5+o+PC74Zk6DOpZpdpYyS
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=b9g4YVpm
Subject: [Intel-wired-lan] [PATCH 1/7] checkpatch: don't complain on
 _Generic() use
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>,
 Jakub Kicinski <kuba@kernel.org>, Dwaipayan Ray <dwaipayanray1@gmail.com>,
 Andy Whitcroft <apw@canonical.com>, Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Improve CamelCase recognition logic to avoid reporting on
 _Generic() use.

Other C keywords, such as _Bool, are intentionally omitted, as those
should be rather avoided in new source code.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 scripts/checkpatch.pl | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 4427572b2477..29b510ddd83c 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -5848,6 +5848,8 @@ sub process {
 #CamelCase
 			if ($var !~ /^$Constant$/ &&
 			    $var =~ /[A-Z][a-z]|[a-z][A-Z]/ &&
+#Ignore C keywords
+			    $var !~ /^_Generic$/ &&
 #Ignore some autogenerated defines and enum values
 			    $var !~ /^(?:[A-Z]+_){1,5}[A-Z]{1,3}[a-z]/ &&
 #Ignore Page<foo> variants
-- 
2.39.3

