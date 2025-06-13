Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D85AD91F9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 17:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6CB6E40A9D;
	Fri, 13 Jun 2025 15:52:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TJc0q4Oz-nW6; Fri, 13 Jun 2025 15:52:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CC50840AA3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749829935;
	bh=yV1sWZeZVf/FIQXque4O5JP0sG577Rz8Lj6jjxTnW8c=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LuHCM96WTCwzX7L/9GPXXa8oiabA03N+nsc3uKfY/19YLqldGd/BSypSl3jKmf0lc
	 YttOwj6Q6C8deWdOWhPWfB4t/uMDq4sm1go2Omcf7KQKXsZEq8n5Hrwd1Azbd2cfrR
	 bl5Wi89Gppain3vJg5JOZpCVlYcfuUD/LChacO9oJyRhsWz2A3dISTOFxQ5nsWeRtY
	 iQoII4lA8MMI2dLnIORn93Vjl9txvexgBfm49xcz4UNoOT0QU3qCl2OHiGolzdQ6Ri
	 gYrRiJC9k0/SiJ+x3iPxeywP9TfPvO+7xFQ+Zc58hG1wiylhxrYbhilQQ0VrqWm/+Z
	 0OmDOTCUdzSdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CC50840AA3;
	Fri, 13 Jun 2025 15:52:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id E7B84183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 15:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D98E3842B5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 15:52:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BfHX1WujqghA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 15:52:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.182;
 helo=out-182.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E2FAE842AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2FAE842AF
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com
 [95.215.58.182])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E2FAE842AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 15:52:12 +0000 (UTC)
Message-ID: <2ac62524-e45f-4ef6-a8b4-01adfd1391c2@linux.dev>
Date: Fri, 13 Jun 2025 16:52:01 +0100
MIME-Version: 1.0
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org, jiri@resnulli.us,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, aleksandr.loktionov@intel.com,
 milena.olech@intel.com, corbet@lwn.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org
References: <20250612152835.1703397-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250612152835.1703397-1-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1749829927;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yV1sWZeZVf/FIQXque4O5JP0sG577Rz8Lj6jjxTnW8c=;
 b=hZXefQ1zsdCjt1DrWrZaHhu7+CM+Ie5JgTIalZx7nqY2js+eUhbVLFm+cSahtcLnRIBMtM
 6Sz8pXb9SRPlAlw2wYYU4/SHhLiAkOSjhVDfP9VYIdDUZ9PPtKK+y8h7nhiqz3VPpTXXrV
 dwMnBcwhhkVjWndrPKIgkldwS4zTTlA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=hZXefQ1z
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 0/3] dpll: add all inputs
 phase offset monitor
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

On 12/06/2025 16:28, Arkadiusz Kubalewski wrote:
> Add dpll device level feature: phase offset monitor.
> 
> Phase offset measurement is typically performed against the current active
> source. However, some DPLL (Digital Phase-Locked Loop) devices may offer
> the capability to monitor phase offsets across all available inputs.
> The attribute and current feature state shall be included in the response
> message of the ``DPLL_CMD_DEVICE_GET`` command for supported DPLL devices.
> In such cases, users can also control the feature using the
> ``DPLL_CMD_DEVICE_SET`` command by setting the ``enum dpll_feature_state``
> values for the attribute.
> Once enabled the phase offset measurements for the input shall be returned
> in the ``DPLL_A_PIN_PHASE_OFFSET`` attribute.
> 
> Implement feature support in ice driver for dpll-enabled devices.
> 
> Verify capability:
> $ ./tools/net/ynl/pyynl/cli.py \
>   --spec Documentation/netlink/specs/dpll.yaml \
>   --dump device-get
> [{'clock-id': 4658613174691613800,
>    'id': 0,
>    'lock-status': 'locked-ho-acq',
>    'mode': 'automatic',
>    'mode-supported': ['automatic'],
>    'module-name': 'ice',
>    'type': 'eec'},
>   {'clock-id': 4658613174691613800,
>    'id': 1,
>    'lock-status': 'locked-ho-acq',
>    'mode': 'automatic',
>    'mode-supported': ['automatic'],
>    'module-name': 'ice',
>    'phase-offset-monitor': 'disable',
>    'type': 'pps'}]
> 
> Enable the feature:
> $ ./tools/net/ynl/pyynl/cli.py \
>   --spec Documentation/netlink/specs/dpll.yaml \
>   --do device-set --json '{"id":1, "phase-offset-monitor":"enable"}'
> 
> Verify feature is enabled:
> $ ./tools/net/ynl/pyynl/cli.py \
>   --spec Documentation/netlink/specs/dpll.yaml \
>   --dump device-get
> [
>   [...]
>   {'capabilities': {'all-inputs-phase-offset-monitor'},
>    'clock-id': 4658613174691613800,
>    'id': 1,
>   [...]
>    'phase-offset-monitor': 'enable',
>   [...]]
> 
> v6:
> - rebase.
> 
> Arkadiusz Kubalewski (3):
>    dpll: add phase-offset-monitor feature to netlink spec
>    dpll: add phase_offset_monitor_get/set callback ops
>    ice: add phase offset monitor for all PPS dpll inputs
> 
>   Documentation/driver-api/dpll.rst             |  18 ++
>   Documentation/netlink/specs/dpll.yaml         |  24 +++
>   drivers/dpll/dpll_netlink.c                   |  69 ++++++-
>   drivers/dpll/dpll_nl.c                        |   5 +-
>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  20 ++
>   drivers/net/ethernet/intel/ice/ice_common.c   |  26 +++
>   drivers/net/ethernet/intel/ice/ice_common.h   |   3 +
>   drivers/net/ethernet/intel/ice/ice_dpll.c     | 193 +++++++++++++++++-
>   drivers/net/ethernet/intel/ice/ice_dpll.h     |   8 +
>   drivers/net/ethernet/intel/ice/ice_main.c     |   4 +
>   include/linux/dpll.h                          |   8 +
>   include/uapi/linux/dpll.h                     |  12 ++
>   12 files changed, 384 insertions(+), 6 deletions(-)
> 

Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
