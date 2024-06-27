Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CDA191A125
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 10:10:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A642404D1;
	Thu, 27 Jun 2024 08:10:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n0Xix49aPzBw; Thu, 27 Jun 2024 08:10:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5572E404E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719475851;
	bh=3rjHvN75SU41xo72HtyttqbgOwKamJ18ERgXafuwxDU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=UcJG2iJruWAKNbpec+YTUj+U49mZwA7IxpEldRpGzRcgn0DxcNSxPvvIKGvnytAJt
	 s+Gij8r77RgWfTMj2BgRoRBcw9mYtUoIfpjtdkWiV/TC+5UN/SBKoBZjUqou41BQim
	 7MqgmvJsBDkT8eMxxw1SDZAbrwRM5ptRIy4KqQ51hAQjlqx/vDRx1GosuL9yPPpQ69
	 HFjGgSa+1RDMrmQxrN0WYeWda/mNjHM0mK49PC1vq4+h2evyS8KH3AHbqkQvrQvyj4
	 cRzl3YawcjPmxVvhuCBGn5WUkHXROP0u56IyS+rROSgxxYyNc1C6cUIQCM0sSWK6rU
	 KyqjA5UQlxd0A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5572E404E0;
	Thu, 27 Jun 2024 08:10:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7690D1BF3D5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 08:10:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E28D83FFB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 08:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wVdjde45cuGS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 08:10:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 986AC83FFA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 986AC83FFA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 986AC83FFA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 08:10:47 +0000 (UTC)
X-CSE-ConnectionGUID: NUnYsuHWQsGLsPHhKwD8HQ==
X-CSE-MsgGUID: vcYNENGTS7OL9NUNuPoE+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="12275393"
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; d="scan'208";a="12275393"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 01:10:46 -0700
X-CSE-ConnectionGUID: lizahZMRRPquri1pruom5w==
X-CSE-MsgGUID: JHND//+cSqOpvHuJJ+EZEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; d="scan'208";a="44205524"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa010.jf.intel.com with ESMTP; 27 Jun 2024 01:10:46 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 10:10:43 +0200
Message-ID: <20240627081043.46211-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719475847; x=1751011847;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zhGHhB7Hpqx6jgn4cBj1RmJNXvPv59skzHuArxqvFdE=;
 b=cCLOJm/WUGoq+yR+NR2jo6+9l22OPiPy586AbxS/CUjlXjnVfgb8dlqB
 Tnko37srDvG/B3/wPE0JVKmsnIynu0qWgdAikqWkX/wvI+IaQy2yNg0de
 wOdVp5szONHIzG9yjuuwCTtGnv035MZN5GJoGmp3/wl2glnTAIeczgrZp
 pSkPOxLeGaXI3O3bOYMyXcamwQvC0USn/VROCA/HRG/xF6NuIGmCBhi+f
 JfnP9OLVlpvLXx5z4/zh3bDbkG3WjXwcqPu+xqxgu6oY+uzYFrWmOogN9
 aDSjyvSvoMc62/oYeuoO4q+vd06Ogs4jc65hu13FEX4SlJ8kN5Ls1AR15
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cCLOJm/W
Subject: [Intel-wired-lan] [iwl-next v1] ice: update representor after SF
 VSI config
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
Cc: anthony.l.nguyen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VSI for subfunction is only allocated when port representor is created.
The VSI id isn't correct at this state. Update the representor with
correct VSI id after the VSI is configured.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
It should be squashed with:
8a469e1a1cf9 ("ice: create port representor for SF")
---
 drivers/net/ethernet/intel/ice/ice_sf_eth.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
index 73bb9c5d273d..abd74f30dabc 100644
--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
@@ -125,6 +125,8 @@ static int ice_sf_dev_probe(struct auxiliary_device *adev,
 	}
 	vsi->sf = dyn_port;
 
+	ice_eswitch_update_repr(&dyn_port->repr_id, vsi);
+
 	err = ice_devlink_create_sf_dev_port(sf_dev);
 	if (err) {
 		dev_err(dev, "Cannot add ice virtual devlink port for subfunction");
-- 
2.42.0

