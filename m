Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BB37CBFE8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 11:50:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EB5D415B8;
	Tue, 17 Oct 2023 09:50:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EB5D415B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697536226;
	bh=zyNGv0D13gj7lXIlKaV/8SB/BU1pJ+bc0RtUeRDIT1g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aU0d4eyIHpq82a5u8bF7GuMjGyNx4OlC/p293J+hep1GMIc6rFNNtJAT5u8nllVaF
	 lSAXDzbUq/LhfQzPQnPzCr2KUvV1oV+At8NcIr3UX2yBvJ+yiN+OX/iqWpcwy6Uem0
	 mZsDD66bZWECsSlMj3FJ32s1LnvA71ltFpORfNj6Mdc676g9h3CRzQ31av62TNzbgr
	 TO+lwiGdbUvio++wl1CFemkE2cdhrQjIj/XJQYW6j8EaEldu9SEj7x47jMDTr8Xfxg
	 JhORyNa36UI0NG1QhQ7nsW+dvncjxJRWYzADuGNVkdaSAjqqm2IMI3R7kpG1x6hvBu
	 PeH3WmNu8F8iQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OMQCrhd9a8M5; Tue, 17 Oct 2023 09:50:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EE89140A14;
	Tue, 17 Oct 2023 09:50:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EE89140A14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE16F1BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 857B660AD1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:50:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 857B660AD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KHam2Sk4VJkf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 09:50:18 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 728AA60A5E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:50:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 728AA60A5E
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="452221558"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="452221558"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 02:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="872495253"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="872495253"
Received: from lkp-server02.sh.intel.com (HELO f64821696465) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 17 Oct 2023 02:50:14 -0700
Received: from kbuild by f64821696465 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qsgiJ-0009RF-33;
 Tue, 17 Oct 2023 09:50:11 +0000
Date: Tue, 17 Oct 2023 17:49:12 +0800
From: kernel test robot <lkp@intel.com>
To: Konrad Knitter <konrad.knitter@intel.com>, intel-wired-lan@lists.osuosl.org
Message-ID: <202310171740.MOWYti1J-lkp@intel.com>
References: <20231016102913.898932-1-konrad.knitter@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231016102913.898932-1-konrad.knitter@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697536218; x=1729072218;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nyyg0L8NonbYaXsBEp+WK/UQNHC0Bw/76oVgNS6I6s0=;
 b=BFrnjJrTbuCHTyjIMC54mydjm687gNgJKma2lpi9ISW8HQaiiKt2YOWP
 9JIRl+VNMPsmF9pNU9yuD9Yzai4bFjuJAsbLfUgUevxppo5GbHkzltopf
 x5lVGGk5ZcvdYKRWiqxsg6112JsHpGgJvq6+3+vbUsXcBDq3vZIoL6WIP
 iuTVR2JSpbYB39+U8viV003ua51agT2Uu5w9vK0Vb+YGl+bynjYas2YHs
 yRs89FH1hYObnA57iriEOMKeqm2qyAWZZn1FRpOsdWCZq/F3QLu3SCWm+
 DEOsjf2Gjeh2lfZNpqtlIKzTCTjV3Juo+uI8p3qSXM94xg6WmucB4lnhR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BFrnjJrT
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: read internal
 temperature sensor
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
Cc: jdelvare@suse.com, netdev@vger.kernel.org, oe-kbuild-all@lists.linux.dev,
 Konrad Knitter <konrad.knitter@intel.com>, Eric Joyner <eric.joyner@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Marcin Domagala <marcinx.domagala@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Konrad,

kernel test robot noticed the following build warnings:

[auto build test WARNING on ac4dec3fd63c7da703c244698fc92efb411ff0d4]

url:    https://github.com/intel-lab-lkp/linux/commits/Konrad-Knitter/ice-read-internal-temperature-sensor/20231017-142048
base:   ac4dec3fd63c7da703c244698fc92efb411ff0d4
patch link:    https://lore.kernel.org/r/20231016102913.898932-1-konrad.knitter%40intel.com
patch subject: [PATCH iwl-next v4] ice: read internal temperature sensor
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20231017/202310171740.MOWYti1J-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20231017/202310171740.MOWYti1J-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202310171740.MOWYti1J-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_common.c:5329: warning: Excess function parameter 'sensor' description in 'ice_aq_get_sensor_reading'
>> drivers/net/ethernet/intel/ice/ice_common.c:5329: warning: Excess function parameter 'format' description in 'ice_aq_get_sensor_reading'


vim +5329 drivers/net/ethernet/intel/ice/ice_common.c

  5317	
  5318	/**
  5319	 * ice_aq_get_sensor_reading
  5320	 * @hw: pointer to the HW struct
  5321	 * @sensor: sensor type
  5322	 * @format: requested response format
  5323	 * @data: pointer to data to be read from the sensor
  5324	 *
  5325	 * Get sensor reading (0x0632)
  5326	 */
  5327	int ice_aq_get_sensor_reading(struct ice_hw *hw,
  5328				      struct ice_aqc_get_sensor_reading_resp *data)
> 5329	{
  5330		struct ice_aqc_get_sensor_reading *cmd;
  5331		struct ice_aq_desc desc;
  5332		int status;
  5333	
  5334		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_sensor_reading);
  5335		cmd = &desc.params.get_sensor_reading;
  5336	#define ICE_INTERNAL_TEMP_SENSOR_FORMAT	0
  5337	#define ICE_INTERNAL_TEMP_SENSOR	0
  5338		cmd->sensor = ICE_INTERNAL_TEMP_SENSOR;
  5339		cmd->format = ICE_INTERNAL_TEMP_SENSOR_FORMAT;
  5340	
  5341		status = ice_aq_send_cmd(hw, &desc, NULL, 0, NULL);
  5342		if (!status)
  5343			memcpy(data, &desc.params.get_sensor_reading_resp,
  5344			       sizeof(*data));
  5345	
  5346		return status;
  5347	}
  5348	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
