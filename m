Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B0C89A2B1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Apr 2024 18:41:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90E0E60F46;
	Fri,  5 Apr 2024 16:41:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8fk5rJaQtVkL; Fri,  5 Apr 2024 16:41:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C43860F56
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712335263;
	bh=aIKqZDhC+E7Eg1GjoyrHEipSjwGseo1QjkWijSlIthM=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KZiv9lwnAkSGuKu5kCWf365cRVzTkxIdgxtCAOmJvJP7IDdxO4uD4sDUSCqvDB4k+
	 4533vsSjlhh9CAuxIm0c2Z/FoT4w5u0PTGsl5VN/xlhmrPku1RvtkJaBoaod24Xrwq
	 qXZfd9UFIbpZkAptCMAYyvzH+5HKVa6QOLbv4rj07rK/k8Ri1eVBDo5Xlz9cUM6bV+
	 Mgj/pNl37VM0X6jeOOdurj9ADM+6Tj2+uX1OsrJap1rC2LwGsXhbaUI/DFjBvKHEDl
	 RlBflRk9qZR2o3uTjLE4XM3s8heYi32+IgDKIwbQ2ERZzqcVAOeN9oEXK7Ax5M3tkT
	 aw/9gjGWUgJ8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C43860F56;
	Fri,  5 Apr 2024 16:41:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1BAD1BF346
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 16:41:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A297E60F46
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 16:41:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vySxSlIuACgb for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Apr 2024 16:40:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org AEBCD60BBA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEBCD60BBA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AEBCD60BBA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Apr 2024 16:40:57 +0000 (UTC)
X-CSE-ConnectionGUID: RP9RgPsSS3GBA0OmQmKfAg==
X-CSE-MsgGUID: Fr+Bs8JwScm4SLLmgEIbzQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="7552310"
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; 
   d="scan'208";a="7552310"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 09:40:57 -0700
X-CSE-ConnectionGUID: scqD2Yd/StOVWHEXoJEVMA==
X-CSE-MsgGUID: uo+uCk1TTmOceyKTKefdwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,181,1708416000"; d="scan'208";a="56694210"
Received: from unknown (HELO vcostago-mobl3) ([10.124.222.253])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 09:40:56 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
In-Reply-To: <DM6PR11MB4610D310DFB48331968D0190F3032@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20240327155422.25424-1-piotr.kwapulinski@intel.com>
 <20240327155422.25424-2-piotr.kwapulinski@intel.com>
 <87y19sbrpz.fsf@intel.com>
 <DM6PR11MB4610D310DFB48331968D0190F3032@DM6PR11MB4610.namprd11.prod.outlook.com>
Date: Fri, 05 Apr 2024 09:40:55 -0700
Message-ID: <87msq7bw4o.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712335258; x=1743871258;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+CaBJfhdltV2ROHxNQWutR5dEHUh0VVZ6MKbgfnaLNc=;
 b=m0IhAjAOHk2U2/DpD1GzH8tzeJp9t6NEX52QDmqlFbb4WRhfYJKLmBeF
 SMvxHhLNEJTTht6jWt7xa06CgSiBixb3kg+Z6WxDKmS9aWfLJhQ/7iNnU
 Ub9WmJ+S2ix80JxYvvFe/lnf6ivsr7Pl7JpdqcBHtMBsV0DJMUOYrZOQ4
 HfoQPU+h23AW8gntREqU85m06FyfPl9f7a3Tzy9VqZ49jBzrF3S0rV1Cp
 pao7gCwUzmHAlo6AOdTQ0v8kYQrvNnMm5uhEL0euLnsMjB/YBG/a0nhuc
 A1HuPBjdolrh6ae3oTeFJYtYZvpZE2ACjaDf5wu5oqLmiy1saTvjYRqxG
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=m0IhAjAO
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] ixgbe: Add support
 for E610 FW Admin Command Interface
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
Cc: "Wegrzyn, Stefan" <stefan.wegrzyn@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"Kwapulinski, Piotr" <piotr.kwapulinski@intel.com> writes:

>>-----Original Message-----
>>From: Gomes, Vinicius <vinicius.gomes@intel.com> 
>>Sent: Friday, April 5, 2024 2:04 AM
>>To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; intel-wired-lan@lists.osuosl.org
>>Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>; netdev@vger.kernel.org; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>; Michal Swiatkowski <michal.swiatkowski@linux.intel.com>; Wegrzyn, Stefan <stefan.wegrzyn@intel.com>
>>Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] ixgbe: Add support for E610 FW Admin Command Interface
>>
>>Piotr Kwapulinski <piotr.kwapulinski@intel.com> writes:
>>
>>> Add low level support for Admin Command Interface (ACI). ACI is the
>>> Firmware interface used by a driver to communicate with E610 adapter. Add
>>> the following ACI features:
>>> - data structures, macros, register definitions
>>> - commands handling
>>> - events handling
>>>
>>
>>I am seeing that you are introducing other enums/structures that are not
>>being used by this commit.
> Generally, all is used throughout this patch series. The aim of this patch is to have entire ACI implementation in a single place. Some kind of "library" code.
>
>>
>>> Co-developed-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>>> Signed-off-by: Stefan Wegrzyn <stefan.wegrzyn@intel.com>
>>> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
>>> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>>> ---
>>>  drivers/net/ethernet/intel/ixgbe/Makefile     |    4 +-
>>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c |  505 ++++++++
>>>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   19 +
>>>  drivers/net/ethernet/intel/ixgbe/ixgbe_type.h |   71 +-
>>>  .../ethernet/intel/ixgbe/ixgbe_type_e610.h    | 1063 +++++++++++++++++
>>>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |   15 +
>>>  6 files changed, 1671 insertions(+), 6 deletions(-)
>>>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
>>>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>>>  create mode 100644 drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
>>>
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/Makefile b/drivers/net/ethernet/intel/ixgbe/Makefile
>>> index 4fb0d9e..e0444ae 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/Makefile
>>> +++ b/drivers/net/ethernet/intel/ixgbe/Makefile
>>> @@ -1,5 +1,5 @@
>>>  # SPDX-License-Identifier: GPL-2.0
>>> -# Copyright(c) 1999 - 2018 Intel Corporation.
>>> +# Copyright(c) 1999 - 2024 Intel Corporation.
>>>  #
>>>  # Makefile for the Intel(R) 10GbE PCI Express ethernet driver
>>>  #
>>> @@ -9,7 +9,7 @@ obj-$(CONFIG_IXGBE) += ixgbe.o
>>>  ixgbe-objs := ixgbe_main.o ixgbe_common.o ixgbe_ethtool.o \
>>>                ixgbe_82599.o ixgbe_82598.o ixgbe_phy.o ixgbe_sriov.o \
>>>                ixgbe_mbx.o ixgbe_x540.o ixgbe_x550.o ixgbe_lib.o ixgbe_ptp.o \
>>> -              ixgbe_xsk.o
>>> +              ixgbe_xsk.o ixgbe_e610.o
>>>  
>>>  ixgbe-$(CONFIG_IXGBE_DCB) +=  ixgbe_dcb.o ixgbe_dcb_82598.o \
>>>                                ixgbe_dcb_82599.o ixgbe_dcb_nl.o
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> new file mode 100644
>>> index 0000000..e1e68fc
>>> --- /dev/null
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
>>> @@ -0,0 +1,505 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>> +
>>> +#include "ixgbe_common.h"
>>> +#include "ixgbe_e610.h"
>>> +#include "ixgbe_type.h"
>>> +#include "ixgbe_x540.h"
>>> +#include "ixgbe_x550.h"
>>> +#include "ixgbe_phy.h"
>>> +
>>> +/**
>>> + * ixgbe_should_retry_aci_send_cmd_execute - decide if ACI command should
>>> + * be resent
>>> + * @opcode: ACI opcode
>>> + *
>>> + * Check if ACI command should be sent again depending on the provided opcode.
>>> + * It may happen when CSR is busy during link state changes.
>>> + *
>>> + * Return: true if the sending command routine should be repeated,
>>> + * otherwise false.
>>> + */
>>> +static bool ixgbe_should_retry_aci_send_cmd_execute(u16 opcode)
>>> +{
>>> +	switch (opcode) {
>>> +	case ixgbe_aci_opc_disable_rxen:
>>> +	case ixgbe_aci_opc_get_phy_caps:
>>> +	case ixgbe_aci_opc_get_link_status:
>>> +	case ixgbe_aci_opc_get_link_topo:
>>> +		return true;
>>> +	}
>>> +
>>> +	return false;
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_aci_send_cmd_execute - execute sending FW Admin Command to FW Admin
>>> + * Command Interface
>>> + * @hw: pointer to the HW struct
>>> + * @desc: descriptor describing the command
>>> + * @buf: buffer to use for indirect commands (NULL for direct commands)
>>> + * @buf_size: size of buffer for indirect commands (0 for direct commands)
>>> + *
>>> + * Admin Command is sent using CSR by setting descriptor and buffer in specific
>>> + * registers.
>>> + *
>>> + * Return: the exit code of the operation.
>>> + * * - 0 - success.
>>> + * * - -EIO - CSR mechanism is not enabled.
>>> + * * - -EBUSY - CSR mechanism is busy.
>>> + * * - -EINVAL - buf_size is too big or
>>> + * invalid argument buf or buf_size.
>>> + * * - -ETIME - Admin Command X command timeout.
>>> + * * - -EIO - Admin Command X invalid state of HICR register or
>>> + * Admin Command failed because of bad opcode was returned or
>>> + * Admin Command failed with error Y.
>>> + */
>>> +static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
>>> +				      struct ixgbe_aci_desc *desc,
>>> +				      void *buf, u16 buf_size)
>>> +{
>>> +	u32 *tmp_buf __free(kfree) = NULL;
>>> +	u32 *raw_desc = (u32 *)desc;
>>> +	u32 hicr, i, tmp_buf_size;
>>> +	bool valid_buf = false;
>>> +	u16 opcode;
>>> +
>>> +	hw->aci.last_status = IXGBE_ACI_RC_OK;
>>> +
>>> +	/* It's necessary to check if mechanism is enabled */
>>> +	hicr = IXGBE_READ_REG(hw, IXGBE_PF_HICR);
>>> +
>>> +	if (!(hicr & IXGBE_PF_HICR_EN))
>>> +		return -EIO;
>>> +
>>> +	if (hicr & IXGBE_PF_HICR_C)
>>> +		return -EBUSY;
>>> +
>>> +	opcode = desc->opcode;
>>> +
>>> +	if (buf_size > IXGBE_ACI_MAX_BUFFER_SIZE)
>>> +		return -EINVAL;
>>> +
>>> +	if (buf)
>>> +		desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_BUF);
>>> +
>>> +	if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_BUF)) {
>>> +		if ((buf && !buf_size) ||
>>> +		    (!buf && buf_size))
>>> +			return -EINVAL;
>>> +		if (buf && buf_size)
>>> +			valid_buf = true;
>>> +	}
>>> +
>>> +	if (valid_buf) {
>>> +		if (buf_size % 4 == 0)
>>> +			tmp_buf_size = buf_size;
>>> +		else
>>> +			/* Allow aligned PF_HIBA access */
>>> +			tmp_buf_size = (buf_size & (u16)(~0x03)) + 4;
>>> +
>>> +		tmp_buf = kmalloc(tmp_buf_size, GFP_KERNEL);
>>
>>It seems that 'tmp_buf' is leaking.
> Please note that it implements auto variables cleanup.
>
>>
>>Seeing this extra allocation and memcpy(), I am wondering if it would be
>>better to restrict the users of this function to only buffer sizes that
>>are multiples of 4, and error out in case it isn't.
> Possibly the tempting optimization is to implement the dedicated handling of the last 4 bytes of buffer.
> The copy/set would be limited to only these 4 bytes in case the buff size is not a multiple of 4. It can easily be stack allocated.
>
>>
>>> +		if (!tmp_buf)
>>> +			return -ENOMEM;
>>> +
>>> +		/* tmp_buf will be firstly filled with 0xFF and after
>>> +		 * that the content of buf will be written into it.
>>> +		 * This approach lets us use valid buf_size and
>>> +		 * prevents us from reading past buf area
>>> +		 * when buf_size mod 4 not equal to 0.
>>> +		 */
>>> +		memset(tmp_buf, 0xFF, tmp_buf_size);
>>> +		memcpy(tmp_buf, buf, buf_size);
>>> +
>>> +		if (tmp_buf_size > IXGBE_ACI_LG_BUF)
>>> +			desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_LB);
>>> +
>>> +		desc->datalen = cpu_to_le16(buf_size);
>>> +
>>> +		if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_RD))
>>> +			for (i = 0; i < tmp_buf_size / 4; i++)
>>> +				IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i),
>>> +						le32_to_cpu(tmp_buf[i]));
>>> +	}
>>> +
>>> +	/* Descriptor is written to specific registers */
>>> +	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
>>> +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
>>> +				le32_to_cpu(raw_desc[i]));
>>> +
>>> +	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
>>> +	 * PF_HICR_EV
>>> +	 */
>>> +	hicr = (IXGBE_READ_REG(hw, IXGBE_PF_HICR) | IXGBE_PF_HICR_C) &
>>> +	       ~(IXGBE_PF_HICR_SV | IXGBE_PF_HICR_EV);
>>> +	IXGBE_WRITE_REG(hw, IXGBE_PF_HICR, hicr);
>>> +
>>> +#define MAX_SLEEP_RESP_US 1000
>>> +#define MAX_TMOUT_RESP_SYNC_US 100000000
>>> +
>>> +	/* Wait for sync Admin Command response */
>>> +	read_poll_timeout(IXGBE_READ_REG, hicr,
>>> +			  (hicr & IXGBE_PF_HICR_SV) ||
>>> +			  !(hicr & IXGBE_PF_HICR_C),
>>> +			  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_SYNC_US, true, hw,
>>> +			  IXGBE_PF_HICR);
>>> +
>>> +#define MAX_TMOUT_RESP_ASYNC_US 150000000
>>> +
>>> +	/* Wait for async Admin Command response */
>>> +	read_poll_timeout(IXGBE_READ_REG, hicr,
>>> +			  (hicr & IXGBE_PF_HICR_EV) ||
>>> +			  !(hicr & IXGBE_PF_HICR_C),
>>> +			  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_ASYNC_US, true, hw,
>>> +			  IXGBE_PF_HICR);
>>> +
>>> +	/* Read sync Admin Command response */
>>> +	if ((hicr & IXGBE_PF_HICR_SV)) {
>>> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>>> +			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
>>> +			raw_desc[i] = cpu_to_le32(raw_desc[i]);
>>> +		}
>>> +	}
>>> +
>>> +	/* Read async Admin Command response */
>>> +	if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
>>> +		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
>>> +			raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
>>> +			raw_desc[i] = cpu_to_le32(raw_desc[i]);
>>> +		}
>>> +	}
>>> +
>>> +	/* Handle timeout and invalid state of HICR register */
>>> +	if (hicr & IXGBE_PF_HICR_C)
>>> +		return -ETIME;
>>> +
>>> +	if (!(hicr & IXGBE_PF_HICR_SV) && !(hicr & IXGBE_PF_HICR_EV))
>>> +		return -EIO;
>>> +
>>> +	/* For every command other than 0x0014 treat opcode mismatch
>>> +	 * as an error. Response to 0x0014 command read from HIDA_2
>>> +	 * is a descriptor of an event which is expected to contain
>>> +	 * different opcode than the command.
>>> +	 */
>>> +	if (desc->opcode != opcode &&
>>> +	    opcode != cpu_to_le16(ixgbe_aci_opc_get_fw_event))
>>> +		return -EIO;
>>> +
>>> +	if (desc->retval) {
>>> +		hw->aci.last_status = (enum ixgbe_aci_err)desc->retval;
>>> +		return -EIO;
>>> +	}
>>> +
>>> +	/* Write a response values to a buf */
>>> +	if (valid_buf) {
>>> +		for (i = 0; i < tmp_buf_size / 4; i++) {
>>> +			tmp_buf[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIBA(i));
>>> +			tmp_buf[i] = cpu_to_le32(tmp_buf[i]);
>>> +		}
>>> +		memcpy(buf, tmp_buf, buf_size);
>>> +	}
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_aci_send_cmd - send FW Admin Command to FW Admin Command Interface
>>> + * @hw: pointer to the HW struct
>>> + * @desc: descriptor describing the command
>>> + * @buf: buffer to use for indirect commands (NULL for direct commands)
>>> + * @buf_size: size of buffer for indirect commands (0 for direct commands)
>>> + *
>>> + * Helper function to send FW Admin Commands to the FW Admin Command Interface.
>>> + *
>>> + * Retry sending the FW Admin Command multiple times to the FW ACI
>>> + * if the EBUSY Admin Command error is returned.
>>> + *
>>> + * Return: the exit code of the operation.
>>> + */
>>> +int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct ixgbe_aci_desc *desc,
>>> +		       void *buf, u16 buf_size)
>>> +{
>>> +	u16 opcode = le16_to_cpu(desc->opcode);
>>> +	u8 *buf_cpy __free(kfree) = NULL;
>>> +	struct ixgbe_aci_desc desc_cpy;
>>> +	enum ixgbe_aci_err last_status;
>>> +	bool is_cmd_for_retry;
>>> +	unsigned long timeout;
>>> +	u8 idx = 0;
>>> +	int err;
>>> +
>>> +	is_cmd_for_retry = ixgbe_should_retry_aci_send_cmd_execute(opcode);
>>> +
>>> +	if (is_cmd_for_retry) {
>>> +		if (buf) {
>>> +			buf_cpy = kzalloc(buf_size, GFP_KERNEL);
>>
>>Another allocation that seems to be leaking.
> Please note that it implements auto variables cleanup.

Oh! My eyes are not used to that and skipped over it, sorry about that.

>
>>
>>> +			if (!buf_cpy)
>>> +				return -ENOMEM;
>>> +		}
>>> +		desc_cpy = *desc;
>>> +	}
>>> +
>>> +	timeout = jiffies + msecs_to_jiffies(IXGBE_ACI_SEND_TIMEOUT_MS);
>>> +	do {
>>> +		mutex_lock(&hw->aci.lock);
>>> +		err = ixgbe_aci_send_cmd_execute(hw, desc, buf, buf_size);
>>> +		last_status = hw->aci.last_status;
>>> +		mutex_unlock(&hw->aci.lock);
>>> +
>>> +		if (!is_cmd_for_retry || !err ||
>>> +		    last_status != IXGBE_ACI_RC_EBUSY)
>>> +			break;
>>> +
>>> +		if (buf)
>>> +			memcpy(buf, buf_cpy, buf_size);
>>> +		*desc = desc_cpy;
>>> +
>>
>>In this case, I am wondering if having separate buffers for the
>>"request" and the "response" side would make the code simpler. Have you
>>thought about it? Would something like it improve things, do you think?
> In fact I have a mixed filling about this. I'd suggest to leave it as it is.
>

That's fair.

>>
>>> +		msleep(IXGBE_ACI_SEND_DELAY_TIME_MS);
>>> +	} while (++idx < IXGBE_ACI_SEND_MAX_EXECUTE &&
>>> +		 time_before(jiffies, timeout));
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_aci_check_event_pending - check if there are any pending events
>>> + * @hw: pointer to the HW struct
>>> + *
>>> + * Determine if there are any pending events.
>>> + *
>>> + * Return: true if there are any currently pending events
>>> + * otherwise false.
>>> + */
>>> +bool ixgbe_aci_check_event_pending(struct ixgbe_hw *hw)
>>> +{
>>> +	/* Check state of Event Pending (EP) bit */
>>> +	return IXGBE_READ_REG(hw, IXGBE_PF_HICR) & IXGBE_PF_HICR_EP;
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_aci_get_event - get an event from ACI
>>> + * @hw: pointer to the HW struct
>>> + * @e: event information structure
>>> + * @pending: optional flag signaling that there are more pending events
>>> + *
>>> + * Obtain an event from ACI and return its content
>>> + * through 'e' using ACI command (0x0014).
>>> + * Provide information if there are more events
>>> + * to retrieve through 'pending'.
>>> + *
>>> + * Return: the exit code of the operation.
>>> + */
>>> +int ixgbe_aci_get_event(struct ixgbe_hw *hw, struct ixgbe_aci_event *e,
>>> +			bool *pending)
>>> +{
>>> +	struct ixgbe_aci_desc desc;
>>> +	int err;
>>> +
>>> +	if (!e || (!e->msg_buf && e->buf_len))
>>> +		return -EINVAL;
>>> +
>>> +	mutex_lock(&hw->aci.lock);
>>> +
>>> +	/* Check if there are any events pending */
>>> +	if (!ixgbe_aci_check_event_pending(hw)) {
>>> +		err = -ENOENT;
>>> +		goto aci_get_event_exit;
>>> +	}
>>> +
>>> +	/* Obtain pending event */
>>> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_get_fw_event);
>>> +	err = ixgbe_aci_send_cmd_execute(hw, &desc, e->msg_buf, e->buf_len);
>>> +	if (err)
>>> +		goto aci_get_event_exit;
>>> +
>>> +	/* Returned 0x0014 opcode indicates that no event was obtained */
>>> +	if (desc.opcode == cpu_to_le16(ixgbe_aci_opc_get_fw_event)) {
>>> +		err = -ENOENT;
>>> +		goto aci_get_event_exit;
>>> +	}
>>> +
>>> +	/* Determine size of event data */
>>> +	e->msg_len = min_t(u16, le16_to_cpu(desc.datalen), e->buf_len);
>>> +	/* Write event descriptor to event info structure */
>>> +	memcpy(&e->desc, &desc, sizeof(e->desc));
>>> +
>>> +	/* Check if there are any further events pending */
>>> +	if (pending)
>>> +		*pending = ixgbe_aci_check_event_pending(hw);
>>> +
>>> +aci_get_event_exit:
>>> +	mutex_unlock(&hw->aci.lock);
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_fill_dflt_direct_cmd_desc - fill ACI descriptor with default values.
>>> + * @desc: pointer to the temp descriptor (non DMA mem)
>>> + * @opcode: the opcode can be used to decide which flags to turn off or on
>>> + *
>>> + * Helper function to fill the descriptor desc with default values
>>> + * and the provided opcode.
>>> + */
>>> +void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode)
>>> +{
>>> +	/* zero out the desc */
>>> +	memset(desc, 0, sizeof(*desc));
>>> +	desc->opcode = cpu_to_le16(opcode);
>>> +	desc->flags = cpu_to_le16(IXGBE_ACI_FLAG_SI);
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_aci_req_res - request a common resource
>>> + * @hw: pointer to the HW struct
>>> + * @res: resource ID
>>> + * @access: access type
>>> + * @sdp_number: resource number
>>> + * @timeout: the maximum time in ms that the driver may hold the resource
>>> + *
>>> + * Requests a common resource using the ACI command (0x0008).
>>> + * Specifies the maximum time the driver may hold the resource.
>>> + * If the requested resource is currently occupied by some other driver,
>>> + * a busy return value is returned and the timeout field value indicates the
>>> + * maximum time the current owner has to free it.
>>> + *
>>> + * Return: the exit code of the operation.
>>> + */
>>> +static int ixgbe_aci_req_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
>>> +			     enum ixgbe_aci_res_access_type access,
>>> +			     u8 sdp_number, u32 *timeout)
>>> +{
>>> +	struct ixgbe_aci_cmd_req_res *cmd_resp;
>>> +	struct ixgbe_aci_desc desc;
>>> +	int err;
>>> +
>>> +	cmd_resp = &desc.params.res_owner;
>>> +
>>> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_req_res);
>>> +
>>> +	cmd_resp->res_id = cpu_to_le16(res);
>>> +	cmd_resp->access_type = cpu_to_le16(access);
>>> +	cmd_resp->res_number = cpu_to_le32(sdp_number);
>>> +	cmd_resp->timeout = cpu_to_le32(*timeout);
>>> +	*timeout = 0;
>>> +
>>> +	err = ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
>>> +
>>> +	/* If the resource is held by some other driver, the command completes
>>> +	 * with a busy return value and the timeout field indicates the maximum
>>> +	 * time the current owner of the resource has to free it.
>>> +	 */
>>> +	if (!err || hw->aci.last_status == IXGBE_ACI_RC_EBUSY)
>>> +		*timeout = le32_to_cpu(cmd_resp->timeout);
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_aci_release_res - release a common resource using ACI
>>> + * @hw: pointer to the HW struct
>>> + * @res: resource ID
>>> + * @sdp_number: resource number
>>> + *
>>> + * Release a common resource using ACI command (0x0009).
>>> + *
>>> + * Return: the exit code of the operation.
>>> + */
>>> +static int ixgbe_aci_release_res(struct ixgbe_hw *hw,
>>> +				 enum ixgbe_aci_res_ids res, u8 sdp_number)
>>> +{
>>> +	struct ixgbe_aci_cmd_req_res *cmd;
>>> +	struct ixgbe_aci_desc desc;
>>> +
>>> +	cmd = &desc.params.res_owner;
>>> +
>>> +	ixgbe_fill_dflt_direct_cmd_desc(&desc, ixgbe_aci_opc_release_res);
>>> +
>>> +	cmd->res_id = cpu_to_le16(res);
>>> +	cmd->res_number = cpu_to_le32(sdp_number);
>>> +
>>> +	return ixgbe_aci_send_cmd(hw, &desc, NULL, 0);
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_acquire_res - acquire the ownership of a resource
>>> + * @hw: pointer to the HW structure
>>> + * @res: resource ID
>>> + * @access: access type (read or write)
>>> + * @timeout: timeout in milliseconds
>>> + *
>>> + * Make an attempt to acquire the ownership of a resource using
>>> + * the ixgbe_aci_req_res to utilize ACI.
>>> + * In case if some other driver has previously acquired the resource and
>>> + * performed any necessary updates, the -EALREADY is returned,
>>> + * and the caller does not obtain the resource and has no further work to do.
>>> + * If needed, the function will poll until the current lock owner timeouts.
>>> + *
>>> + * Return: the exit code of the operation.
>>> + */
>>> +int ixgbe_acquire_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
>>> +		      enum ixgbe_aci_res_access_type access, u32 timeout)
>>> +{
>>> +#define IXGBE_RES_POLLING_DELAY_MS	10
>>> +	u32 delay = IXGBE_RES_POLLING_DELAY_MS;
>>> +	u32 res_timeout = timeout;
>>> +	u32 retry_timeout;
>>> +	int err;
>>> +
>>> +	err = ixgbe_aci_req_res(hw, res, access, 0, &res_timeout);
>>> +
>>> +	/* A return code of -EALREADY means that another driver has
>>> +	 * previously acquired the resource and performed any necessary updates;
>>> +	 * in this case the caller does not obtain the resource and has no
>>> +	 * further work to do.
>>> +	 */
>>> +	if (err == -EALREADY)
>>> +		return err;
>>> +
>>> +	/* If necessary, poll until the current lock owner timeouts.
>>> +	 * Set retry_timeout to the timeout value reported by the FW in the
>>> +	 * response to the "Request Resource Ownership" (0x0008) Admin Command
>>> +	 * as it indicates the maximum time the current owner of the resource
>>> +	 * is allowed to hold it.
>>> +	 */
>>> +	retry_timeout = res_timeout;
>>> +	while (err && retry_timeout && res_timeout) {
>>> +		msleep(delay);
>>> +		retry_timeout = (retry_timeout > delay) ?
>>> +			retry_timeout - delay : 0;
>>> +		err = ixgbe_aci_req_res(hw, res, access, 0, &res_timeout);
>>> +
>>> +		/* success - lock acquired
>>> +		 * -EALREADY - lock free, no work to do
>>> +		 */
>>> +		if (!err || err == -EALREADY)
>>> +			break;
>>> +	}
>>> +
>>> +	return err;
>>> +}
>>> +
>>> +/**
>>> + * ixgbe_release_res - release a common resource
>>> + * @hw: pointer to the HW structure
>>> + * @res: resource ID
>>> + *
>>> + * Release a common resource using ixgbe_aci_release_res.
>>> + */
>>> +void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res)
>>> +{
>>> +	u32 total_delay = 0;
>>> +	int err;
>>> +
>>> +	err = ixgbe_aci_release_res(hw, res, 0);
>>> +
>>> +	/* There are some rare cases when trying to release the resource
>>> +	 * results in an admin command timeout, so handle them correctly.
>>> +	 */
>>> +	while (err == -ETIME &&
>>> +	       total_delay < IXGBE_ACI_RELEASE_RES_TIMEOUT) {
>>> +		usleep_range(1000, 1500);
>>> +		err = ixgbe_aci_release_res(hw, res, 0);
>>> +		total_delay++;
>>> +	}
>>> +}
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
>>> new file mode 100644
>>> index 0000000..8aa025b
>>> --- /dev/null
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h
>>> @@ -0,0 +1,19 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>> +
>>> +#ifndef _IXGBE_E610_H_
>>> +#define _IXGBE_E610_H_
>>> +
>>> +#include "ixgbe_type.h"
>>> +
>>> +int ixgbe_aci_send_cmd(struct ixgbe_hw *hw, struct ixgbe_aci_desc *desc,
>>> +		       void *buf, u16 buf_size);
>>> +bool ixgbe_aci_check_event_pending(struct ixgbe_hw *hw);
>>> +int ixgbe_aci_get_event(struct ixgbe_hw *hw, struct ixgbe_aci_event *e,
>>> +			bool *pending);
>>> +void ixgbe_fill_dflt_direct_cmd_desc(struct ixgbe_aci_desc *desc, u16 opcode);
>>> +int ixgbe_acquire_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res,
>>> +		      enum ixgbe_aci_res_access_type access, u32 timeout);
>>> +void ixgbe_release_res(struct ixgbe_hw *hw, enum ixgbe_aci_res_ids res);
>>> +
>>> +#endif /* _IXGBE_E610_H_ */
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>>> index 61b9774..08d4ae6 100644
>>> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type.h
>>> @@ -1,5 +1,5 @@
>>>  /* SPDX-License-Identifier: GPL-2.0 */
>>> -/* Copyright(c) 1999 - 2018 Intel Corporation. */
>>> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>>  
>>>  #ifndef _IXGBE_TYPE_H_
>>>  #define _IXGBE_TYPE_H_
>>> @@ -7,6 +7,7 @@
>>>  #include <linux/types.h>
>>>  #include <linux/mdio.h>
>>>  #include <linux/netdevice.h>
>>> +#include "ixgbe_type_e610.h"
>>>  
>>>  /* Device IDs */
>>>  #define IXGBE_DEV_ID_82598               0x10B6
>>> @@ -71,12 +72,19 @@
>>>  #define IXGBE_DEV_ID_X550EM_A_1G_T	0x15E4
>>>  #define IXGBE_DEV_ID_X550EM_A_1G_T_L	0x15E5
>>>  
>>> +#define IXGBE_DEV_ID_E610_BACKPLANE	0x57AE
>>> +#define IXGBE_DEV_ID_E610_SFP		0x57AF
>>> +#define IXGBE_DEV_ID_E610_10G_T		0x57B0
>>> +#define IXGBE_DEV_ID_E610_2_5G_T	0x57B1
>>> +#define IXGBE_DEV_ID_E610_SGMII		0x57B2
>>> +
>>>  /* VF Device IDs */
>>>  #define IXGBE_DEV_ID_82599_VF		0x10ED
>>>  #define IXGBE_DEV_ID_X540_VF		0x1515
>>>  #define IXGBE_DEV_ID_X550_VF		0x1565
>>>  #define IXGBE_DEV_ID_X550EM_X_VF	0x15A8
>>>  #define IXGBE_DEV_ID_X550EM_A_VF	0x15C5
>>> +#define IXGBE_DEV_ID_E610_VF		0x57AD
>>>  
>>>  #define IXGBE_CAT(r, m)	IXGBE_##r##_##m
>>>  
>>> @@ -1600,7 +1608,7 @@ enum {
>>>  #define IXGBE_EICR_PCI          0x00040000 /* PCI Exception */
>>>  #define IXGBE_EICR_MAILBOX      0x00080000 /* VF to PF Mailbox Interrupt */
>>>  #define IXGBE_EICR_LSC          0x00100000 /* Link Status Change */
>>> -#define IXGBE_EICR_LINKSEC      0x00200000 /* PN Threshold */
>>> +#define IXGBE_EICR_FW_EVENT	0x00200000 /* Async FW event */
>>>  #define IXGBE_EICR_MNG          0x00400000 /* Manageability Event Interrupt */
>>>  #define IXGBE_EICR_TS           0x00800000 /* Thermal Sensor Event */
>>>  #define IXGBE_EICR_TIMESYNC     0x01000000 /* Timesync Event */
>>> @@ -1636,6 +1644,7 @@ enum {
>>>  #define IXGBE_EICS_PCI          IXGBE_EICR_PCI       /* PCI Exception */
>>>  #define IXGBE_EICS_MAILBOX      IXGBE_EICR_MAILBOX   /* VF to PF Mailbox Int */
>>>  #define IXGBE_EICS_LSC          IXGBE_EICR_LSC       /* Link Status Change */
>>> +#define IXGBE_EICS_FW_EVENT	IXGBE_EICR_FW_EVENT  /* Async FW event */
>>>  #define IXGBE_EICS_MNG          IXGBE_EICR_MNG       /* MNG Event Interrupt */
>>>  #define IXGBE_EICS_TIMESYNC     IXGBE_EICR_TIMESYNC  /* Timesync Event */
>>>  #define IXGBE_EICS_GPI_SDP0(_hw)	IXGBE_EICR_GPI_SDP0(_hw)
>>> @@ -1654,6 +1663,7 @@ enum {
>>>  #define IXGBE_EIMS_PCI          IXGBE_EICR_PCI       /* PCI Exception */
>>>  #define IXGBE_EIMS_MAILBOX      IXGBE_EICR_MAILBOX   /* VF to PF Mailbox Int */
>>>  #define IXGBE_EIMS_LSC          IXGBE_EICR_LSC       /* Link Status Change */
>>> +#define IXGBE_EIMS_FW_EVENT	IXGBE_EICR_FW_EVENT  /* Async FW event */
>>>  #define IXGBE_EIMS_MNG          IXGBE_EICR_MNG       /* MNG Event Interrupt */
>>>  #define IXGBE_EIMS_TS           IXGBE_EICR_TS        /* Thermel Sensor Event */
>>>  #define IXGBE_EIMS_TIMESYNC     IXGBE_EICR_TIMESYNC  /* Timesync Event */
>>> @@ -1673,6 +1683,7 @@ enum {
>>>  #define IXGBE_EIMC_PCI          IXGBE_EICR_PCI       /* PCI Exception */
>>>  #define IXGBE_EIMC_MAILBOX      IXGBE_EICR_MAILBOX   /* VF to PF Mailbox Int */
>>>  #define IXGBE_EIMC_LSC          IXGBE_EICR_LSC       /* Link Status Change */
>>> +#define IXGBE_EIMC_FW_EVENT	IXGBE_EICR_FW_EVENT  /* Async FW event */
>>>  #define IXGBE_EIMC_MNG          IXGBE_EICR_MNG       /* MNG Event Interrupt */
>>>  #define IXGBE_EIMC_TIMESYNC     IXGBE_EICR_TIMESYNC  /* Timesync Event */
>>>  #define IXGBE_EIMC_GPI_SDP0(_hw)	IXGBE_EICR_GPI_SDP0(_hw)
>>> @@ -2068,6 +2079,7 @@ enum {
>>>  #define IXGBE_SAN_MAC_ADDR_PTR  0x28
>>>  #define IXGBE_DEVICE_CAPS       0x2C
>>>  #define IXGBE_SERIAL_NUMBER_MAC_ADDR 0x11
>>> +#define IXGBE_PCIE_MSIX_E610_CAPS	0xB2
>>>  #define IXGBE_PCIE_MSIX_82599_CAPS  0x72
>>>  #define IXGBE_MAX_MSIX_VECTORS_82599	0x40
>>>  #define IXGBE_PCIE_MSIX_82598_CAPS  0x62
>>> @@ -2289,6 +2301,7 @@ enum {
>>>  #define IXGBE_RXMTRL_V2_MGMT_MSG		0x0D00
>>>  
>>>  #define IXGBE_FCTRL_SBP 0x00000002 /* Store Bad Packet */
>>> +#define IXGBE_FCTRL_TPE 0x00000080 /* Tag Promiscuous Ena*/
>>>  #define IXGBE_FCTRL_MPE 0x00000100 /* Multicast Promiscuous Ena*/
>>>  #define IXGBE_FCTRL_UPE 0x00000200 /* Unicast Promiscuous Ena */
>>>  #define IXGBE_FCTRL_BAM 0x00000400 /* Broadcast Accept Mode */
>>> @@ -2352,6 +2365,7 @@ enum {
>>>  /* Multiple Transmit Queue Command Register */
>>>  #define IXGBE_MTQC_RT_ENA       0x1 /* DCB Enable */
>>>  #define IXGBE_MTQC_VT_ENA       0x2 /* VMDQ2 Enable */
>>> +#define IXGBE_MTQC_NUM_TC_OR_Q  0xC /* Number of TCs or TxQs per pool */
>>>  #define IXGBE_MTQC_64Q_1PB      0x0 /* 64 queues 1 pack buffer */
>>>  #define IXGBE_MTQC_32VF         0x8 /* 4 TX Queues per pool w/32VF's */
>>>  #define IXGBE_MTQC_64VF         0x4 /* 2 TX Queues per pool w/64VF's */
>>> @@ -2971,6 +2985,29 @@ typedef u32 ixgbe_link_speed;
>>>  					IXGBE_LINK_SPEED_1GB_FULL | \
>>>  					IXGBE_LINK_SPEED_10GB_FULL)
>>>  
>>> +/* Physical layer type */
>>> +typedef u64 ixgbe_physical_layer;
>>> +#define IXGBE_PHYSICAL_LAYER_UNKNOWN		0
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_T		0x00001
>>> +#define IXGBE_PHYSICAL_LAYER_1000BASE_T		0x00002
>>> +#define IXGBE_PHYSICAL_LAYER_100BASE_TX		0x00004
>>> +#define IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU	0x00008
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_LR		0x00010
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_LRM	0x00020
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_SR		0x00040
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_KX4	0x00080
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_CX4	0x00100
>>> +#define IXGBE_PHYSICAL_LAYER_1000BASE_KX	0x00200
>>> +#define IXGBE_PHYSICAL_LAYER_1000BASE_BX	0x00400
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_KR		0x00800
>>> +#define IXGBE_PHYSICAL_LAYER_10GBASE_XAUI	0x01000
>>> +#define IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA	0x02000
>>> +#define IXGBE_PHYSICAL_LAYER_1000BASE_SX	0x04000
>>> +#define IXGBE_PHYSICAL_LAYER_10BASE_T		0x08000
>>> +#define IXGBE_PHYSICAL_LAYER_2500BASE_KX	0x10000
>>> +#define IXGBE_PHYSICAL_LAYER_2500BASE_T		0x20000
>>> +#define IXGBE_PHYSICAL_LAYER_5000BASE_T		0x40000
>>> +
>>>  /* Flow Control Data Sheet defined values
>>>   * Calculation and defines taken from 802.1bb Annex O
>>>   */
>>> @@ -3146,6 +3183,8 @@ enum ixgbe_mac_type {
>>>  	ixgbe_mac_X550,
>>>  	ixgbe_mac_X550EM_x,
>>>  	ixgbe_mac_x550em_a,
>>> +	ixgbe_mac_e610,
>>> +	ixgbe_mac_e610_vf,
>>>  	ixgbe_num_macs
>>>  };
>>>  
>>> @@ -3222,7 +3261,9 @@ enum ixgbe_media_type {
>>>  	ixgbe_media_type_copper,
>>>  	ixgbe_media_type_backplane,
>>>  	ixgbe_media_type_cx4,
>>> -	ixgbe_media_type_virtual
>>> +	ixgbe_media_type_virtual,
>>> +	ixgbe_media_type_da,
>>> +	ixgbe_media_type_aui,
>>>  };
>>>  
>>>  /* Flow Control Settings */
>>> @@ -3231,7 +3272,8 @@ enum ixgbe_fc_mode {
>>>  	ixgbe_fc_rx_pause,
>>>  	ixgbe_fc_tx_pause,
>>>  	ixgbe_fc_full,
>>> -	ixgbe_fc_default
>>> +	ixgbe_fc_default,
>>> +	ixgbe_fc_pfc,
>>>  };
>>>  
>>>  /* Smart Speed Settings */
>>> @@ -3531,6 +3573,9 @@ struct ixgbe_link_operations {
>>>  struct ixgbe_link_info {
>>>  	struct ixgbe_link_operations ops;
>>>  	u8 addr;
>>> +	struct ixgbe_link_status link_info;
>>> +	struct ixgbe_link_status link_info_old;
>>> +	u8 get_link_info;
>>>  };
>>>  
>>>  struct ixgbe_eeprom_info {
>>> @@ -3573,6 +3618,7 @@ struct ixgbe_mac_info {
>>>  	u8				san_mac_rar_index;
>>>  	struct ixgbe_thermal_sensor_data  thermal_sensor_data;
>>>  	bool				set_lben;
>>> +	u32				max_link_up_time;
>>>  	u8				led_link_act;
>>>  };
>>>  
>>> @@ -3597,6 +3643,10 @@ struct ixgbe_phy_info {
>>>  	bool                            reset_if_overtemp;
>>>  	bool                            qsfp_shared_i2c_bus;
>>>  	u32				nw_mng_if_sel;
>>> +	u64				phy_type_low;
>>> +	u64				phy_type_high;
>>> +	u16				curr_user_speed_req;
>>> +	struct ixgbe_aci_cmd_set_phy_cfg_data curr_user_phy_cfg;
>>>  };
>>>  
>>>  #include "ixgbe_mbx.h"
>>> @@ -3652,6 +3702,19 @@ struct ixgbe_hw {
>>>  	bool				allow_unsupported_sfp;
>>>  	bool				wol_enabled;
>>>  	bool				need_crosstalk_fix;
>>> +	u8				api_branch;
>>> +	u8				api_maj_ver;
>>> +	u8				api_min_ver;
>>> +	u8				api_patch;
>>> +	u8				fw_branch;
>>> +	u8				fw_maj_ver;
>>> +	u8				fw_min_ver;
>>> +	u8				fw_patch;
>>> +	u32				fw_build;
>>> +	struct ixgbe_aci_info		aci;
>>> +	struct ixgbe_flash_info		flash;
>>> +	struct ixgbe_hw_dev_caps	dev_caps;
>>> +	struct ixgbe_hw_func_caps	func_caps;
>>>  };
>>>  
>>>  struct ixgbe_info {
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>>> new file mode 100644
>>> index 0000000..566fb79
>>> --- /dev/null
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
>>> @@ -0,0 +1,1063 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>> +
>>> +#ifndef _IXGBE_TYPE_E610_H_
>>> +#define _IXGBE_TYPE_E610_H_
>>> +
>>> +#define BYTES_PER_DWORD	4
>>> +
>>> +/* General E610 defines */
>>> +#define IXGBE_MAX_VSI			768
>>> +
>>> +/* Checksum and Shadow RAM pointers */
>>> +#define E610_SR_SW_CHECKSUM_WORD		0x3F
>>> +
>>> +/* Flash Access Register */
>>> +#define IXGBE_GLNVM_FLA			0x000B6108 /* Reset Source: POR */
>>> +#define IXGBE_GLNVM_FLA_LOCKED_S	6
>>> +#define IXGBE_GLNVM_FLA_LOCKED_M	BIT(6)
>>> +
>>> +/* Admin Command Interface (ACI) registers */
>>> +#define IXGBE_PF_HIDA(_i)			(0x00085000 + ((_i) * 4))
>>> +#define IXGBE_PF_HIDA_2(_i)			(0x00085020 + ((_i) * 4))
>>> +#define IXGBE_PF_HIBA(_i)			(0x00084000 + ((_i) * 4))
>>> +#define IXGBE_PF_HICR				0x00082048
>>> +
>>> +#define IXGBE_PF_HICR_EN			BIT(0)
>>> +#define IXGBE_PF_HICR_C				BIT(1)
>>> +#define IXGBE_PF_HICR_SV			BIT(2)
>>> +#define IXGBE_PF_HICR_EV			BIT(3)
>>> +#define IXGBE_PF_HICR_EP			BIT(4)
>>> +
>>> +#define IXGBE_ACI_DESC_SIZE		32
>>> +#define IXGBE_ACI_DESC_SIZE_IN_DWORDS	(IXGBE_ACI_DESC_SIZE / BYTES_PER_DWORD)
>>> +
>>> +#define IXGBE_ACI_MAX_BUFFER_SIZE		4096    /* Size in bytes */
>>> +#define IXGBE_ACI_SEND_DELAY_TIME_MS		10
>>> +#define IXGBE_ACI_SEND_MAX_EXECUTE		3
>>> +#define IXGBE_ACI_SEND_TIMEOUT_MS		\
>>> +		(IXGBE_ACI_SEND_MAX_EXECUTE * IXGBE_ACI_SEND_DELAY_TIME_MS)
>>> +/* [ms] timeout of waiting for sync response */
>>> +#define IXGBE_ACI_SYNC_RESPONSE_TIMEOUT		100000
>>> +/* [ms] timeout of waiting for async response */
>>> +#define IXGBE_ACI_ASYNC_RESPONSE_TIMEOUT	150000
>>> +/* [ms] timeout of waiting for resource release */
>>> +#define IXGBE_ACI_RELEASE_RES_TIMEOUT		10000
>>> +
>>> +/* FW defined boundary for a large buffer, 4k >= Large buffer > 512 bytes */
>>> +#define IXGBE_ACI_LG_BUF		512
>>> +
>>> +/* Flags sub-structure
>>> + * |0  |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |13 |14 |15 |
>>> + * |DD |CMP|ERR|VFE| * *  RESERVED * * |LB |RD |VFC|BUF|SI |EI |FE |
>>> + */
>>> +
>>> +#define IXGBE_ACI_FLAG_DD	BIT(0) /* 0x1 */
>>> +#define IXGBE_ACI_FLAG_CMP	BIT(1) /* 0x2 */
>>> +#define IXGBE_ACI_FLAG_ERR	BIT(2) /* 0x4 */
>>> +#define IXGBE_ACI_FLAG_VFE	BIT(3) /* 0x8 */
>>> +#define IXGBE_ACI_FLAG_LB	BIT(9) /* 0x200 */
>>> +#define IXGBE_ACI_FLAG_RD	BIT(10) /* 0x400 */
>>> +#define IXGBE_ACI_FLAG_VFC	BIT(11) /* 0x800 */
>>> +#define IXGBE_ACI_FLAG_BUF	BIT(12) /* 0x1000 */
>>> +#define IXGBE_ACI_FLAG_SI	BIT(13) /* 0x2000 */
>>> +#define IXGBE_ACI_FLAG_EI	BIT(14) /* 0x4000 */
>>> +#define IXGBE_ACI_FLAG_FE	BIT(15) /* 0x8000 */
>>> +
>>> +/* Admin Command Interface (ACI) error codes */
>>> +enum ixgbe_aci_err {
>>> +	IXGBE_ACI_RC_OK		= 0,  /* Success */
>>> +	IXGBE_ACI_RC_EPERM	= 1,  /* Operation not permitted */
>>> +	IXGBE_ACI_RC_ENOENT	= 2,  /* No such element */
>>> +	IXGBE_ACI_RC_ESRCH	= 3,  /* Bad opcode */
>>> +	IXGBE_ACI_RC_EINTR	= 4,  /* Operation interrupted */
>>> +	IXGBE_ACI_RC_EIO	= 5,  /* I/O error */
>>> +	IXGBE_ACI_RC_ENXIO	= 6,  /* No such resource */
>>> +	IXGBE_ACI_RC_E2BIG	= 7,  /* Arg too long */
>>> +	IXGBE_ACI_RC_EAGAIN	= 8,  /* Try again */
>>> +	IXGBE_ACI_RC_ENOMEM	= 9,  /* Out of memory */
>>> +	IXGBE_ACI_RC_EACCES	= 10, /* Permission denied */
>>> +	IXGBE_ACI_RC_EFAULT	= 11, /* Bad address */
>>> +	IXGBE_ACI_RC_EBUSY	= 12, /* Device or resource busy */
>>> +	IXGBE_ACI_RC_EEXIST	= 13, /* Object already exists */
>>> +	IXGBE_ACI_RC_EINVAL	= 14, /* Invalid argument */
>>> +	IXGBE_ACI_RC_ENOTTY	= 15, /* Not a typewriter */
>>> +	IXGBE_ACI_RC_ENOSPC	= 16, /* No space left or alloc failure */
>>> +	IXGBE_ACI_RC_ENOSYS	= 17, /* Function not implemented */
>>> +	IXGBE_ACI_RC_ERANGE	= 18, /* Parameter out of range */
>>> +	IXGBE_ACI_RC_EFLUSHED	= 19, /* Cmd flushed due to prev cmd error */
>>> +	IXGBE_ACI_RC_BAD_ADDR	= 20, /* Descriptor contains a bad pointer */
>>> +	IXGBE_ACI_RC_EMODE	= 21, /* Op not allowed in current dev mode */
>>> +	IXGBE_ACI_RC_EFBIG	= 22, /* File too big */
>>> +	IXGBE_ACI_RC_ESBCOMP	= 23, /* SB-IOSF completion unsuccessful */
>>> +	IXGBE_ACI_RC_ENOSEC	= 24, /* Missing security manifest */
>>> +	IXGBE_ACI_RC_EBADSIG	= 25, /* Bad RSA signature */
>>> +	IXGBE_ACI_RC_ESVN	= 26, /* SVN number prohibits this package */
>>> +	IXGBE_ACI_RC_EBADMAN	= 27, /* Manifest hash mismatch */
>>> +	IXGBE_ACI_RC_EBADBUF	= 28, /* Buffer hash mismatches manifest */
>>> +	IXGBE_ACI_RC_EACCES_BMCU	= 29, /* BMC Update in progress */
>>> +};
>>> +
>>> +/* Admin Command Interface (ACI) opcodes */
>>> +enum ixgbe_aci_opc {
>>> +	ixgbe_aci_opc_get_ver				= 0x0001,
>>> +	ixgbe_aci_opc_driver_ver			= 0x0002,
>>> +	ixgbe_aci_opc_get_exp_err			= 0x0005,
>>> +
>>> +	/* resource ownership */
>>> +	ixgbe_aci_opc_req_res				= 0x0008,
>>> +	ixgbe_aci_opc_release_res			= 0x0009,
>>> +
>>> +	/* device/function capabilities */
>>> +	ixgbe_aci_opc_list_func_caps			= 0x000A,
>>> +	ixgbe_aci_opc_list_dev_caps			= 0x000B,
>>> +
>>> +	/* safe disable of RXEN */
>>> +	ixgbe_aci_opc_disable_rxen			= 0x000C,
>>> +
>>> +	/* FW events */
>>> +	ixgbe_aci_opc_get_fw_event			= 0x0014,
>>> +
>>> +	/* PHY commands */
>>> +	ixgbe_aci_opc_get_phy_caps			= 0x0600,
>>> +	ixgbe_aci_opc_set_phy_cfg			= 0x0601,
>>> +	ixgbe_aci_opc_restart_an			= 0x0605,
>>> +	ixgbe_aci_opc_get_link_status			= 0x0607,
>>> +	ixgbe_aci_opc_set_event_mask			= 0x0613,
>>> +	ixgbe_aci_opc_get_link_topo			= 0x06E0,
>>> +	ixgbe_aci_opc_get_link_topo_pin			= 0x06E1,
>>> +	ixgbe_aci_opc_read_i2c				= 0x06E2,
>>> +	ixgbe_aci_opc_write_i2c				= 0x06E3,
>>> +	ixgbe_aci_opc_read_mdio				= 0x06E4,
>>> +	ixgbe_aci_opc_write_mdio			= 0x06E5,
>>> +	ixgbe_aci_opc_set_gpio_by_func			= 0x06E6,
>>> +	ixgbe_aci_opc_get_gpio_by_func			= 0x06E7,
>>> +	ixgbe_aci_opc_set_gpio				= 0x06EC,
>>> +	ixgbe_aci_opc_get_gpio				= 0x06ED,
>>> +	ixgbe_aci_opc_sff_eeprom			= 0x06EE,
>>> +	ixgbe_aci_opc_prog_topo_dev_nvm			= 0x06F2,
>>> +	ixgbe_aci_opc_read_topo_dev_nvm			= 0x06F3,
>>> +
>>> +	/* NVM commands */
>>> +	ixgbe_aci_opc_nvm_read				= 0x0701,
>>> +	ixgbe_aci_opc_nvm_erase				= 0x0702,
>>> +	ixgbe_aci_opc_nvm_write				= 0x0703,
>>> +	ixgbe_aci_opc_nvm_cfg_read			= 0x0704,
>>> +	ixgbe_aci_opc_nvm_cfg_write			= 0x0705,
>>> +	ixgbe_aci_opc_nvm_checksum			= 0x0706,
>>> +	ixgbe_aci_opc_nvm_write_activate		= 0x0707,
>>> +	ixgbe_aci_opc_nvm_sr_dump			= 0x0707,
>>> +	ixgbe_aci_opc_nvm_save_factory_settings		= 0x0708,
>>> +	ixgbe_aci_opc_nvm_update_empr			= 0x0709,
>>> +	ixgbe_aci_opc_nvm_pkg_data			= 0x070A,
>>> +	ixgbe_aci_opc_nvm_pass_component_tbl		= 0x070B,
>>> +
>>> +	/* Alternate Structure Commands */
>>> +	ixgbe_aci_opc_write_alt_direct			= 0x0900,
>>> +	ixgbe_aci_opc_write_alt_indirect		= 0x0901,
>>> +	ixgbe_aci_opc_read_alt_direct			= 0x0902,
>>> +	ixgbe_aci_opc_read_alt_indirect			= 0x0903,
>>> +	ixgbe_aci_opc_done_alt_write			= 0x0904,
>>> +	ixgbe_aci_opc_clear_port_alt_write		= 0x0906,
>>> +
>>> +	/* debug commands */
>>> +	ixgbe_aci_opc_debug_dump_internals		= 0xFF08,
>>> +
>>> +	/* SystemDiagnostic commands */
>>> +	ixgbe_aci_opc_set_health_status_config		= 0xFF20,
>>> +	ixgbe_aci_opc_get_supported_health_status_codes	= 0xFF21,
>>> +	ixgbe_aci_opc_get_health_status			= 0xFF22,
>>> +	ixgbe_aci_opc_clear_health_status		= 0xFF23,
>>> +};
>>> +
>>> +/* Get version (direct 0x0001) */
>>> +struct ixgbe_aci_cmd_get_ver {
>>> +	__le32 rom_ver;
>>> +	__le32 fw_build;
>>> +	u8 fw_branch;
>>> +	u8 fw_major;
>>> +	u8 fw_minor;
>>> +	u8 fw_patch;
>>> +	u8 api_branch;
>>> +	u8 api_major;
>>> +	u8 api_minor;
>>> +	u8 api_patch;
>>> +};
>>> +
>>> +#define IXGBE_DRV_VER_STR_LEN_E610	32
>>> +
>>> +/* Send driver version (indirect 0x0002) */
>>> +struct ixgbe_aci_cmd_driver_ver {
>>> +	u8 major_ver;
>>> +	u8 minor_ver;
>>> +	u8 build_ver;
>>> +	u8 subbuild_ver;
>>> +	u8 reserved[4];
>>> +	__le32 addr_high;
>>> +	__le32 addr_low;
>>> +};
>>> +
>>> +/* Get Expanded Error Code (0x0005, direct) */
>>> +struct ixgbe_aci_cmd_get_exp_err {
>>> +	__le32 reason;
>>> +#define IXGBE_ACI_EXPANDED_ERROR_NOT_PROVIDED	0xFFFFFFFF
>>> +	__le32 identifier;
>>> +	u8 rsvd[8];
>>> +};
>>> +
>>> +/* FW update timeout definitions are in milliseconds */
>>> +#define IXGBE_NVM_TIMEOUT		180000
>>> +
>>> +enum ixgbe_aci_res_access_type {
>>> +	IXGBE_RES_READ = 1,
>>> +	IXGBE_RES_WRITE
>>> +};
>>> +
>>> +enum ixgbe_aci_res_ids {
>>> +	IXGBE_NVM_RES_ID = 1,
>>> +	IXGBE_SPD_RES_ID,
>>> +	IXGBE_CHANGE_LOCK_RES_ID,
>>> +	IXGBE_GLOBAL_CFG_LOCK_RES_ID
>>> +};
>>> +
>>> +/* Request resource ownership (direct 0x0008)
>>> + * Release resource ownership (direct 0x0009)
>>> + */
>>> +struct ixgbe_aci_cmd_req_res {
>>> +	__le16 res_id;
>>> +	__le16 access_type;
>>> +
>>> +	/* Upon successful completion, FW writes this value and driver is
>>> +	 * expected to release resource before timeout. This value is provided
>>> +	 * in milliseconds.
>>> +	 */
>>> +	__le32 timeout;
>>> +#define IXGBE_ACI_RES_NVM_READ_DFLT_TIMEOUT_MS	3000
>>> +#define IXGBE_ACI_RES_NVM_WRITE_DFLT_TIMEOUT_MS	180000
>>> +#define IXGBE_ACI_RES_CHNG_LOCK_DFLT_TIMEOUT_MS	1000
>>> +#define IXGBE_ACI_RES_GLBL_LOCK_DFLT_TIMEOUT_MS	3000
>>> +	/* For SDP: pin ID of the SDP */
>>> +	__le32 res_number;
>>> +	__le16 status;
>>> +#define IXGBE_ACI_RES_GLBL_SUCCESS		0
>>> +#define IXGBE_ACI_RES_GLBL_IN_PROG		1
>>> +#define IXGBE_ACI_RES_GLBL_DONE			2
>>> +	u8 reserved[2];
>>> +};
>>> +
>>> +/* Get function capabilities (indirect 0x000A)
>>> + * Get device capabilities (indirect 0x000B)
>>> + */
>>> +struct ixgbe_aci_cmd_list_caps {
>>> +	u8 cmd_flags;
>>> +	u8 pf_index;
>>> +	u8 reserved[2];
>>> +	__le32 count;
>>> +	__le32 addr_high;
>>> +	__le32 addr_low;
>>> +};
>>> +
>>> +/* Device/Function buffer entry, repeated per reported capability */
>>> +struct ixgbe_aci_cmd_list_caps_elem {
>>> +	__le16 cap;
>>> +#define IXGBE_ACI_CAPS_VALID_FUNCTIONS			0x0005
>>> +#define IXGBE_ACI_MAX_VALID_FUNCTIONS			0x8
>>> +#define IXGBE_ACI_CAPS_SRIOV				0x0012
>>> +#define IXGBE_ACI_CAPS_VF				0x0013
>>> +#define IXGBE_ACI_CAPS_VMDQ				0x0014
>>> +#define IXGBE_ACI_CAPS_VSI				0x0017
>>> +#define IXGBE_ACI_CAPS_DCB				0x0018
>>> +#define IXGBE_ACI_CAPS_RSS				0x0040
>>> +#define IXGBE_ACI_CAPS_RXQS				0x0041
>>> +#define IXGBE_ACI_CAPS_TXQS				0x0042
>>> +#define IXGBE_ACI_CAPS_MSIX				0x0043
>>> +#define IXGBE_ACI_CAPS_FD				0x0045
>>> +#define IXGBE_ACI_CAPS_1588				0x0046
>>> +#define IXGBE_ACI_CAPS_MAX_MTU				0x0047
>>> +#define IXGBE_ACI_CAPS_NVM_VER				0x0048
>>> +#define IXGBE_ACI_CAPS_PENDING_NVM_VER			0x0049
>>> +#define IXGBE_ACI_CAPS_OROM_VER				0x004A
>>> +#define IXGBE_ACI_CAPS_PENDING_OROM_VER			0x004B
>>> +#define IXGBE_ACI_CAPS_PENDING_NET_VER			0x004D
>>> +#define IXGBE_ACI_CAPS_INLINE_IPSEC			0x0070
>>> +#define IXGBE_ACI_CAPS_NUM_ENABLED_PORTS		0x0072
>>> +#define IXGBE_ACI_CAPS_PCIE_RESET_AVOIDANCE		0x0076
>>> +#define IXGBE_ACI_CAPS_POST_UPDATE_RESET_RESTRICT	0x0077
>>> +#define IXGBE_ACI_CAPS_NVM_MGMT				0x0080
>>> +#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG0		0x0081
>>> +#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG1		0x0082
>>> +#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG2		0x0083
>>> +#define IXGBE_ACI_CAPS_EXT_TOPO_DEV_IMG3		0x0084
>>> +	u8 major_ver;
>>> +	u8 minor_ver;
>>> +	/* Number of resources described by this capability */
>>> +	__le32 number;
>>> +	/* Only meaningful for some types of resources */
>>> +	__le32 logical_id;
>>> +	/* Only meaningful for some types of resources */
>>> +	__le32 phys_id;
>>> +	__le64 rsvd1;
>>> +	__le64 rsvd2;
>>> +};
>>> +
>>> +/* Disable RXEN (direct 0x000C) */
>>> +struct ixgbe_aci_cmd_disable_rxen {
>>> +	u8 lport_num;
>>> +	u8 reserved[15];
>>> +};
>>> +
>>> +/* Get PHY capabilities (indirect 0x0600) */
>>> +struct ixgbe_aci_cmd_get_phy_caps {
>>> +	u8 lport_num;
>>> +	u8 reserved;
>>> +	__le16 param0;
>>> +	/* 18.0 - Report qualified modules */
>>> +#define IXGBE_ACI_GET_PHY_RQM		BIT(0)
>>> +	/* 18.1 - 18.3 : Report mode
>>> +	 * 000b - Report topology capabilities, without media
>>> +	 * 001b - Report topology capabilities, with media
>>> +	 * 010b - Report Active configuration
>>> +	 * 011b - Report PHY Type and FEC mode capabilities
>>> +	 * 100b - Report Default capabilities
>>> +	 */
>>> +#define IXGBE_ACI_REPORT_MODE_M			GENMASK(3, 1)
>>> +#define IXGBE_ACI_REPORT_TOPO_CAP_NO_MEDIA	0
>>> +#define IXGBE_ACI_REPORT_TOPO_CAP_MEDIA		BIT(1)
>>> +#define IXGBE_ACI_REPORT_ACTIVE_CFG		BIT(2)
>>> +#define IXGBE_ACI_REPORT_DFLT_CFG		BIT(3)
>>> +	__le32 reserved1;
>>> +	__le32 addr_high;
>>> +	__le32 addr_low;
>>> +};
>>> +
>>> +/* This is #define of PHY type (Extended):
>>> + * The first set of defines is for phy_type_low.
>>> + */
>>> +#define IXGBE_PHY_TYPE_LOW_100BASE_TX		BIT_ULL(0)
>>> +#define IXGBE_PHY_TYPE_LOW_100M_SGMII		BIT_ULL(1)
>>> +#define IXGBE_PHY_TYPE_LOW_1000BASE_T		BIT_ULL(2)
>>> +#define IXGBE_PHY_TYPE_LOW_1000BASE_SX		BIT_ULL(3)
>>> +#define IXGBE_PHY_TYPE_LOW_1000BASE_LX		BIT_ULL(4)
>>> +#define IXGBE_PHY_TYPE_LOW_1000BASE_KX		BIT_ULL(5)
>>> +#define IXGBE_PHY_TYPE_LOW_1G_SGMII		BIT_ULL(6)
>>> +#define IXGBE_PHY_TYPE_LOW_2500BASE_T		BIT_ULL(7)
>>> +#define IXGBE_PHY_TYPE_LOW_2500BASE_X		BIT_ULL(8)
>>> +#define IXGBE_PHY_TYPE_LOW_2500BASE_KX		BIT_ULL(9)
>>> +#define IXGBE_PHY_TYPE_LOW_5GBASE_T		BIT_ULL(10)
>>> +#define IXGBE_PHY_TYPE_LOW_5GBASE_KR		BIT_ULL(11)
>>> +#define IXGBE_PHY_TYPE_LOW_10GBASE_T		BIT_ULL(12)
>>> +#define IXGBE_PHY_TYPE_LOW_10G_SFI_DA		BIT_ULL(13)
>>> +#define IXGBE_PHY_TYPE_LOW_10GBASE_SR		BIT_ULL(14)
>>> +#define IXGBE_PHY_TYPE_LOW_10GBASE_LR		BIT_ULL(15)
>>> +#define IXGBE_PHY_TYPE_LOW_10GBASE_KR_CR1	BIT_ULL(16)
>>> +#define IXGBE_PHY_TYPE_LOW_10G_SFI_AOC_ACC	BIT_ULL(17)
>>> +#define IXGBE_PHY_TYPE_LOW_10G_SFI_C2C		BIT_ULL(18)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_T		BIT_ULL(19)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_CR		BIT_ULL(20)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_CR_S		BIT_ULL(21)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_CR1		BIT_ULL(22)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_SR		BIT_ULL(23)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_LR		BIT_ULL(24)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_KR		BIT_ULL(25)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_KR_S		BIT_ULL(26)
>>> +#define IXGBE_PHY_TYPE_LOW_25GBASE_KR1		BIT_ULL(27)
>>> +#define IXGBE_PHY_TYPE_LOW_25G_AUI_AOC_ACC	BIT_ULL(28)
>>> +#define IXGBE_PHY_TYPE_LOW_25G_AUI_C2C		BIT_ULL(29)
>>> +#define IXGBE_PHY_TYPE_LOW_MAX_INDEX		29
>>> +/* The second set of defines is for phy_type_high. */
>>> +#define IXGBE_PHY_TYPE_HIGH_10BASE_T		BIT_ULL(1)
>>> +#define IXGBE_PHY_TYPE_HIGH_10M_SGMII		BIT_ULL(2)
>>> +#define IXGBE_PHY_TYPE_HIGH_2500M_SGMII		BIT_ULL(56)
>>> +#define IXGBE_PHY_TYPE_HIGH_100M_USXGMII	BIT_ULL(57)
>>> +#define IXGBE_PHY_TYPE_HIGH_1G_USXGMII		BIT_ULL(58)
>>> +#define IXGBE_PHY_TYPE_HIGH_2500M_USXGMII	BIT_ULL(59)
>>> +#define IXGBE_PHY_TYPE_HIGH_5G_USXGMII		BIT_ULL(60)
>>> +#define IXGBE_PHY_TYPE_HIGH_10G_USXGMII		BIT_ULL(61)
>>> +#define IXGBE_PHY_TYPE_HIGH_MAX_INDEX		61
>>> +
>>> +struct ixgbe_aci_cmd_get_phy_caps_data {
>>> +	__le64 phy_type_low; /* Use values from IXGBE_PHY_TYPE_LOW_* */
>>> +	__le64 phy_type_high; /* Use values from IXGBE_PHY_TYPE_HIGH_* */
>>> +	u8 caps;
>>> +#define IXGBE_ACI_PHY_EN_TX_LINK_PAUSE			BIT(0)
>>> +#define IXGBE_ACI_PHY_EN_RX_LINK_PAUSE			BIT(1)
>>> +#define IXGBE_ACI_PHY_LOW_POWER_MODE			BIT(2)
>>> +#define IXGBE_ACI_PHY_EN_LINK				BIT(3)
>>> +#define IXGBE_ACI_PHY_AN_MODE				BIT(4)
>>> +#define IXGBE_ACI_PHY_EN_MOD_QUAL			BIT(5)
>>> +#define IXGBE_ACI_PHY_EN_LESM				BIT(6)
>>> +#define IXGBE_ACI_PHY_EN_AUTO_FEC			BIT(7)
>>> +#define IXGBE_ACI_PHY_CAPS_MASK				GENMASK(7, 0)
>>> +	u8 low_power_ctrl_an;
>>> +#define IXGBE_ACI_PHY_EN_D3COLD_LOW_POWER_AUTONEG	BIT(0)
>>> +#define IXGBE_ACI_PHY_AN_EN_CLAUSE28			BIT(1)
>>> +#define IXGBE_ACI_PHY_AN_EN_CLAUSE73			BIT(2)
>>> +#define IXGBE_ACI_PHY_AN_EN_CLAUSE37			BIT(3)
>>> +	__le16 eee_cap;
>>> +#define IXGBE_ACI_PHY_EEE_EN_100BASE_TX			BIT(0)
>>> +#define IXGBE_ACI_PHY_EEE_EN_1000BASE_T			BIT(1)
>>> +#define IXGBE_ACI_PHY_EEE_EN_10GBASE_T			BIT(2)
>>> +#define IXGBE_ACI_PHY_EEE_EN_1000BASE_KX		BIT(3)
>>> +#define IXGBE_ACI_PHY_EEE_EN_10GBASE_KR			BIT(4)
>>> +#define IXGBE_ACI_PHY_EEE_EN_25GBASE_KR			BIT(5)
>>> +#define IXGBE_ACI_PHY_EEE_EN_10BASE_T			BIT(11)
>>> +	__le16 eeer_value;
>>> +	u8 phy_id_oui[4]; /* PHY/Module ID connected on the port */
>>> +	u8 phy_fw_ver[8];
>>> +	u8 link_fec_options;
>>> +#define IXGBE_ACI_PHY_FEC_10G_KR_40G_KR4_EN		BIT(0)
>>> +#define IXGBE_ACI_PHY_FEC_10G_KR_40G_KR4_REQ		BIT(1)
>>> +#define IXGBE_ACI_PHY_FEC_25G_RS_528_REQ		BIT(2)
>>> +#define IXGBE_ACI_PHY_FEC_25G_KR_REQ			BIT(3)
>>> +#define IXGBE_ACI_PHY_FEC_25G_RS_544_REQ		BIT(4)
>>> +#define IXGBE_ACI_PHY_FEC_25G_RS_CLAUSE91_EN		BIT(6)
>>> +#define IXGBE_ACI_PHY_FEC_25G_KR_CLAUSE74_EN		BIT(7)
>>> +#define IXGBE_ACI_PHY_FEC_MASK				0xdf
>>> +	u8 module_compliance_enforcement;
>>> +#define IXGBE_ACI_MOD_ENFORCE_STRICT_MODE		BIT(0)
>>> +	u8 extended_compliance_code;
>>> +#define IXGBE_ACI_MODULE_TYPE_TOTAL_BYTE		3
>>> +	u8 module_type[IXGBE_ACI_MODULE_TYPE_TOTAL_BYTE];
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE0_SFP_PLUS		0xA0
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE0_QSFP_PLUS		0x80
>>> +#define IXGBE_ACI_MOD_TYPE_IDENT			1
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_PASSIVE	BIT(0)
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE1_SFP_PLUS_CU_ACTIVE	BIT(1)
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE1_10G_BASE_SR		BIT(4)
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE1_10G_BASE_LR		BIT(5)
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE1_10G_BASE_LRM		BIT(6)
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE1_10G_BASE_ER		BIT(7)
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE2_SFP_PLUS		0xA0
>>> +#define IXGBE_ACI_MOD_TYPE_BYTE2_QSFP_PLUS		0x86
>>> +	u8 qualified_module_count;
>>> +	u8 rsvd2[7];	/* Bytes 47:41 reserved */
>>> +#define IXGBE_ACI_QUAL_MOD_COUNT_MAX			16
>>> +	struct {
>>> +		u8 v_oui[3];
>>> +		u8 rsvd3;
>>> +		u8 v_part[16];
>>> +		__le32 v_rev;
>>> +		__le64 rsvd4;
>>> +	} qual_modules[IXGBE_ACI_QUAL_MOD_COUNT_MAX];
>>> +};
>>> +
>>> +/* Set PHY capabilities (direct 0x0601)
>>> + * NOTE: This command must be followed by setup link and restart auto-neg
>>> + */
>>> +struct ixgbe_aci_cmd_set_phy_cfg {
>>> +	u8 lport_num;
>>> +	u8 reserved[7];
>>> +	__le32 addr_high;
>>> +	__le32 addr_low;
>>> +};
>>> +
>>> +/* Set PHY config command data structure */
>>> +struct ixgbe_aci_cmd_set_phy_cfg_data {
>>> +	__le64 phy_type_low; /* Use values from IXGBE_PHY_TYPE_LOW_* */
>>> +	__le64 phy_type_high; /* Use values from IXGBE_PHY_TYPE_HIGH_* */
>>> +	u8 caps;
>>> +#define IXGBE_ACI_PHY_ENA_VALID_MASK		0xef
>>> +#define IXGBE_ACI_PHY_ENA_TX_PAUSE_ABILITY	BIT(0)
>>> +#define IXGBE_ACI_PHY_ENA_RX_PAUSE_ABILITY	BIT(1)
>>> +#define IXGBE_ACI_PHY_ENA_LOW_POWER		BIT(2)
>>> +#define IXGBE_ACI_PHY_ENA_LINK			BIT(3)
>>> +#define IXGBE_ACI_PHY_ENA_AUTO_LINK_UPDT	BIT(5)
>>> +#define IXGBE_ACI_PHY_ENA_LESM			BIT(6)
>>> +#define IXGBE_ACI_PHY_ENA_AUTO_FEC		BIT(7)
>>> +	u8 low_power_ctrl_an;
>>> +	__le16 eee_cap; /* Value from ixgbe_aci_get_phy_caps */
>>> +	__le16 eeer_value; /* Use defines from ixgbe_aci_get_phy_caps */
>>> +	u8 link_fec_opt; /* Use defines from ixgbe_aci_get_phy_caps */
>>> +	u8 module_compliance_enforcement;
>>> +};
>>> +
>>> +/* Restart AN command data structure (direct 0x0605)
>>> + * Also used for response, with only the lport_num field present.
>>> + */
>>> +struct ixgbe_aci_cmd_restart_an {
>>> +	u8 lport_num;
>>> +	u8 reserved;
>>> +	u8 cmd_flags;
>>> +#define IXGBE_ACI_RESTART_AN_LINK_RESTART	BIT(1)
>>> +#define IXGBE_ACI_RESTART_AN_LINK_ENABLE	BIT(2)
>>> +	u8 reserved2[13];
>>> +};
>>> +
>>> +/* Get link status (indirect 0x0607), also used for Link Status Event */
>>> +struct ixgbe_aci_cmd_get_link_status {
>>> +	u8 lport_num;
>>> +	u8 reserved;
>>> +	__le16 cmd_flags;
>>> +#define IXGBE_ACI_LSE_M				GENMASK(1, 0)
>>> +#define IXGBE_ACI_LSE_NOP			0x0
>>> +#define IXGBE_ACI_LSE_DIS			0x2
>>> +#define IXGBE_ACI_LSE_ENA			0x3
>>> +	/* only response uses this flag */
>>> +#define IXGBE_ACI_LSE_IS_ENABLED		0x1
>>> +	__le32 reserved2;
>>> +	__le32 addr_high;
>>> +	__le32 addr_low;
>>> +};
>>> +
>>> +/* Get link status response data structure, also used for Link Status Event */
>>> +struct ixgbe_aci_cmd_get_link_status_data {
>>> +	u8 topo_media_conflict;
>>> +#define IXGBE_ACI_LINK_TOPO_CONFLICT		BIT(0)
>>> +#define IXGBE_ACI_LINK_MEDIA_CONFLICT		BIT(1)
>>> +#define IXGBE_ACI_LINK_TOPO_CORRUPT		BIT(2)
>>> +#define IXGBE_ACI_LINK_TOPO_UNREACH_PRT		BIT(4)
>>> +#define IXGBE_ACI_LINK_TOPO_UNDRUTIL_PRT	BIT(5)
>>> +#define IXGBE_ACI_LINK_TOPO_UNDRUTIL_MEDIA	BIT(6)
>>> +#define IXGBE_ACI_LINK_TOPO_UNSUPP_MEDIA	BIT(7)
>>> +	u8 link_cfg_err;
>>> +#define IXGBE_ACI_LINK_CFG_ERR				BIT(0)
>>> +#define IXGBE_ACI_LINK_CFG_COMPLETED			BIT(1)
>>> +#define IXGBE_ACI_LINK_ACT_PORT_OPT_INVAL		BIT(2)
>>> +#define IXGBE_ACI_LINK_FEAT_ID_OR_CONFIG_ID_INVAL	BIT(3)
>>> +#define IXGBE_ACI_LINK_TOPO_CRITICAL_SDP_ERR		BIT(4)
>>> +#define IXGBE_ACI_LINK_MODULE_POWER_UNSUPPORTED		BIT(5)
>>> +#define IXGBE_ACI_LINK_EXTERNAL_PHY_LOAD_FAILURE	BIT(6)
>>> +#define IXGBE_ACI_LINK_INVAL_MAX_POWER_LIMIT		BIT(7)
>>> +	u8 link_info;
>>> +#define IXGBE_ACI_LINK_UP		BIT(0)	/* Link Status */
>>> +#define IXGBE_ACI_LINK_FAULT		BIT(1)
>>> +#define IXGBE_ACI_LINK_FAULT_TX		BIT(2)
>>> +#define IXGBE_ACI_LINK_FAULT_RX		BIT(3)
>>> +#define IXGBE_ACI_LINK_FAULT_REMOTE	BIT(4)
>>> +#define IXGBE_ACI_LINK_UP_PORT		BIT(5)	/* External Port Link Status */
>>> +#define IXGBE_ACI_MEDIA_AVAILABLE	BIT(6)
>>> +#define IXGBE_ACI_SIGNAL_DETECT		BIT(7)
>>> +	u8 an_info;
>>> +#define IXGBE_ACI_AN_COMPLETED		BIT(0)
>>> +#define IXGBE_ACI_LP_AN_ABILITY		BIT(1)
>>> +#define IXGBE_ACI_PD_FAULT		BIT(2)	/* Parallel Detection Fault */
>>> +#define IXGBE_ACI_FEC_EN		BIT(3)
>>> +#define IXGBE_ACI_PHY_LOW_POWER		BIT(4)	/* Low Power State */
>>> +#define IXGBE_ACI_LINK_PAUSE_TX		BIT(5)
>>> +#define IXGBE_ACI_LINK_PAUSE_RX		BIT(6)
>>> +#define IXGBE_ACI_QUALIFIED_MODULE	BIT(7)
>>> +	u8 ext_info;
>>> +#define IXGBE_ACI_LINK_PHY_TEMP_ALARM	BIT(0)
>>> +#define IXGBE_ACI_LINK_EXCESSIVE_ERRORS	BIT(1)	/* Excessive Link Errors */
>>> +	/* Port Tx Suspended */
>>> +#define IXGBE_ACI_LINK_TX_ACTIVE	0
>>> +#define IXGBE_ACI_LINK_TX_DRAINED	1
>>> +#define IXGBE_ACI_LINK_TX_FLUSHED	3
>>> +	u8 lb_status;
>>> +#define IXGBE_ACI_LINK_LB_PHY_LCL	BIT(0)
>>> +#define IXGBE_ACI_LINK_LB_PHY_RMT	BIT(1)
>>> +#define IXGBE_ACI_LINK_LB_MAC_LCL	BIT(2)
>>> +	__le16 max_frame_size;
>>> +	u8 cfg;
>>> +#define IXGBE_ACI_LINK_25G_KR_FEC_EN		BIT(0)
>>> +#define IXGBE_ACI_LINK_25G_RS_528_FEC_EN	BIT(1)
>>> +#define IXGBE_ACI_LINK_25G_RS_544_FEC_EN	BIT(2)
>>> +#define IXGBE_ACI_FEC_MASK			GENMASK(2, 0)
>>> +	/* Pacing Config */
>>> +#define IXGBE_ACI_CFG_PACING_M		GENMASK(6, 3)
>>> +#define IXGBE_ACI_CFG_PACING_TYPE_M	BIT(7)
>>> +#define IXGBE_ACI_CFG_PACING_TYPE_AVG	0
>>> +#define IXGBE_ACI_CFG_PACING_TYPE_FIXED	IXGBE_ACI_CFG_PACING_TYPE_M
>>> +	/* External Device Power Ability */
>>> +	u8 power_desc;
>>> +#define IXGBE_ACI_PWR_CLASS_M			GENMASK(5, 0)
>>> +#define IXGBE_ACI_LINK_PWR_BASET_LOW_HIGH	0
>>> +#define IXGBE_ACI_LINK_PWR_BASET_HIGH		1
>>> +#define IXGBE_ACI_LINK_PWR_QSFP_CLASS_1		0
>>> +#define IXGBE_ACI_LINK_PWR_QSFP_CLASS_2		1
>>> +#define IXGBE_ACI_LINK_PWR_QSFP_CLASS_3		2
>>> +#define IXGBE_ACI_LINK_PWR_QSFP_CLASS_4		3
>>> +	__le16 link_speed;
>>> +#define IXGBE_ACI_LINK_SPEED_M			GENMASK(10, 0)
>>> +#define IXGBE_ACI_LINK_SPEED_10MB		BIT(0)
>>> +#define IXGBE_ACI_LINK_SPEED_100MB		BIT(1)
>>> +#define IXGBE_ACI_LINK_SPEED_1000MB		BIT(2)
>>> +#define IXGBE_ACI_LINK_SPEED_2500MB		BIT(3)
>>> +#define IXGBE_ACI_LINK_SPEED_5GB		BIT(4)
>>> +#define IXGBE_ACI_LINK_SPEED_10GB		BIT(5)
>>> +#define IXGBE_ACI_LINK_SPEED_20GB		BIT(6)
>>> +#define IXGBE_ACI_LINK_SPEED_25GB		BIT(7)
>>> +#define IXGBE_ACI_LINK_SPEED_40GB		BIT(8)
>>> +#define IXGBE_ACI_LINK_SPEED_50GB		BIT(9)
>>> +#define IXGBE_ACI_LINK_SPEED_100GB		BIT(10)
>>> +#define IXGBE_ACI_LINK_SPEED_200GB		BIT(11)
>>> +#define IXGBE_ACI_LINK_SPEED_UNKNOWN		BIT(15)
>>> +	__le32 reserved3; /* Aligns next field to 8-byte boundary */
>>> +	u8 ext_fec_status;
>>> +#define IXGBE_ACI_LINK_RS_272_FEC_EN	BIT(0) /* RS 272 FEC enabled */
>>> +	u8 reserved4;
>>> +	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
>>> +	__le64 phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
>>> +	/* Get link status version 2 link partner data */
>>> +	__le64 lp_phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
>>> +	__le64 lp_phy_type_high; /* Use values from ICE_PHY_TYPE_HIGH_* */
>>> +	u8 lp_fec_adv;
>>> +#define IXGBE_ACI_LINK_LP_10G_KR_FEC_CAP	BIT(0)
>>> +#define IXGBE_ACI_LINK_LP_25G_KR_FEC_CAP	BIT(1)
>>> +#define IXGBE_ACI_LINK_LP_RS_528_FEC_CAP	BIT(2)
>>> +#define IXGBE_ACI_LINK_LP_50G_KR_272_FEC_CAP	BIT(3)
>>> +#define IXGBE_ACI_LINK_LP_100G_KR_272_FEC_CAP	BIT(4)
>>> +#define IXGBE_ACI_LINK_LP_200G_KR_272_FEC_CAP	BIT(5)
>>> +	u8 lp_fec_req;
>>> +#define IXGBE_ACI_LINK_LP_10G_KR_FEC_REQ	BIT(0)
>>> +#define IXGBE_ACI_LINK_LP_25G_KR_FEC_REQ	BIT(1)
>>> +#define IXGBE_ACI_LINK_LP_RS_528_FEC_REQ	BIT(2)
>>> +#define IXGBE_ACI_LINK_LP_KR_272_FEC_REQ	BIT(3)
>>> +	u8 lp_flowcontrol;
>>> +#define IXGBE_ACI_LINK_LP_PAUSE_ADV		BIT(0)
>>> +#define IXGBE_ACI_LINK_LP_ASM_DIR_ADV		BIT(1)
>>> +} __packed;
>>> +
>>> +/* Set event mask command (direct 0x0613) */
>>> +struct ixgbe_aci_cmd_set_event_mask {
>>> +	u8	lport_num;
>>> +	u8	reserved[7];
>>> +	__le16	event_mask;
>>> +#define IXGBE_ACI_LINK_EVENT_UPDOWN		BIT(1)
>>> +#define IXGBE_ACI_LINK_EVENT_MEDIA_NA		BIT(2)
>>> +#define IXGBE_ACI_LINK_EVENT_LINK_FAULT		BIT(3)
>>> +#define IXGBE_ACI_LINK_EVENT_PHY_TEMP_ALARM	BIT(4)
>>> +#define IXGBE_ACI_LINK_EVENT_EXCESSIVE_ERRORS	BIT(5)
>>> +#define IXGBE_ACI_LINK_EVENT_SIGNAL_DETECT	BIT(6)
>>> +#define IXGBE_ACI_LINK_EVENT_AN_COMPLETED	BIT(7)
>>> +#define IXGBE_ACI_LINK_EVENT_MODULE_QUAL_FAIL	BIT(8)
>>> +#define IXGBE_ACI_LINK_EVENT_PORT_TX_SUSPENDED	BIT(9)
>>> +#define IXGBE_ACI_LINK_EVENT_TOPO_CONFLICT	BIT(10)
>>> +#define IXGBE_ACI_LINK_EVENT_MEDIA_CONFLICT	BIT(11)
>>> +#define IXGBE_ACI_LINK_EVENT_PHY_FW_LOAD_FAIL	BIT(12)
>>> +	u8	reserved1[6];
>>> +};
>>> +
>>> +struct ixgbe_aci_cmd_link_topo_params {
>>> +	u8 lport_num;
>>> +	u8 lport_num_valid;
>>> +#define IXGBE_ACI_LINK_TOPO_PORT_NUM_VALID	BIT(0)
>>> +	u8 node_type_ctx;
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_M		GENMASK(3, 0)
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_PHY	0
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_GPIO_CTRL	1
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_MUX_CTRL	2
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_LED_CTRL	3
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_LED	4
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_THERMAL	5
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_CAGE	6
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_MEZZ	7
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_ID_EEPROM	8
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_CLK_CTRL	9
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_CLK_MUX	10
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_TYPE_GPS	11
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_S		4
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_GLOBAL			0
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_BOARD			1
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_PORT			2
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_NODE			3
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_NODE_HANDLE		4
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_DIRECT_BUS_ACCESS		5
>>> +#define IXGBE_ACI_LINK_TOPO_NODE_CTX_NODE_HANDLE_BUS_ADDRESS	6
>>> +	u8 index;
>>> +};
>>> +
>>> +struct ixgbe_aci_cmd_link_topo_addr {
>>> +	struct ixgbe_aci_cmd_link_topo_params topo_params;
>>> +	__le16 handle;
>>> +/* Used to decode the handle field */
>>> +#define IXGBE_ACI_LINK_TOPO_HANDLE_BRD_TYPE_M		BIT(9)
>>> +#define IXGBE_ACI_LINK_TOPO_HANDLE_BRD_TYPE_LOM		BIT(9)
>>> +#define IXGBE_ACI_LINK_TOPO_HANDLE_BRD_TYPE_MEZZ	0
>>> +};
>>> +
>>> +/* Get Link Topology Handle (direct, 0x06E0) */
>>> +struct ixgbe_aci_cmd_get_link_topo {
>>> +	struct ixgbe_aci_cmd_link_topo_addr addr;
>>> +	u8 node_part_num;
>>> +#define IXGBE_ACI_GET_LINK_TOPO_NODE_NR_PCA9575		0x21
>>> +#define IXGBE_ACI_GET_LINK_TOPO_NODE_NR_ZL30632_80032	0x24
>>> +#define IXGBE_ACI_GET_LINK_TOPO_NODE_NR_SI5384		0x25
>>> +#define IXGBE_ACI_GET_LINK_TOPO_NODE_NR_C827		0x31
>>> +#define IXGBE_ACI_GET_LINK_TOPO_NODE_NR_GEN_CLK_MUX	0x47
>>> +#define IXGBE_ACI_GET_LINK_TOPO_NODE_NR_GEN_GPS		0x48
>>> +#define IXGBE_ACI_GET_LINK_TOPO_NODE_NR_E610_PTC	0x49
>>> +	u8 rsvd[9];
>>> +};
>>> +
>>> +/* Get Link Topology Pin (direct, 0x06E1) */
>>> +struct ixgbe_aci_cmd_get_link_topo_pin {
>>> +	struct ixgbe_aci_cmd_link_topo_addr addr;
>>> +	u8 input_io_params;
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_GPIO	0
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_RESET_N	1
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_INT_N	2
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_PRESENT_N	3
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_TX_DIS	4
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_MODSEL_N	5
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_LPMODE	6
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_TX_FAULT	7
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_RX_LOSS	8
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_RS0		9
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_RS1		10
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_EEPROM_WP	11
>>> +/* 12 repeats intentionally due to two different uses depending on context */
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_LED		12
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_RED_LED	12
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_GREEN_LED	13
>>> +#define IXGBE_ACI_LINK_TOPO_IO_FUNC_BLUE_LED	14
>>> +#define IXGBE_ACI_LINK_TOPO_INPUT_IO_TYPE_GPIO	3
>>> +/* Use IXGBE_ACI_LINK_TOPO_NODE_TYPE_* for the type values */
>>> +	u8 output_io_params;
>>> +/* Use IXGBE_ACI_LINK_TOPO_NODE_TYPE_* for the type values */
>>> +	u8 output_io_flags;
>>> +#define IXGBE_ACI_LINK_TOPO_OUTPUT_POLARITY	BIT(5)
>>> +#define IXGBE_ACI_LINK_TOPO_OUTPUT_VALUE	BIT(6)
>>> +#define IXGBE_ACI_LINK_TOPO_OUTPUT_DRIVEN	BIT(7)
>>> +	u8 rsvd[7];
>>> +};
>>> +
>>> +/* Read/Write SFF EEPROM command (indirect 0x06EE) */
>>> +struct ixgbe_aci_cmd_sff_eeprom {
>>> +	u8 lport_num;
>>> +	u8 lport_num_valid;
>>> +#define IXGBE_ACI_SFF_PORT_NUM_VALID		BIT(0)
>>> +	__le16 i2c_bus_addr;
>>> +#define IXGBE_ACI_SFF_I2CBUS_7BIT_M		GENMASK(6, 0)
>>> +#define IXGBE_ACI_SFF_I2CBUS_10BIT_M		GENMASK(9, 0)
>>> +#define IXGBE_ACI_SFF_I2CBUS_TYPE_M		BIT(10)
>>> +#define IXGBE_ACI_SFF_I2CBUS_TYPE_7BIT		0
>>> +#define IXGBE_ACI_SFF_I2CBUS_TYPE_10BIT		IXGBE_ACI_SFF_I2CBUS_TYPE_M
>>> +#define IXGBE_ACI_SFF_NO_PAGE_BANK_UPDATE	0
>>> +#define IXGBE_ACI_SFF_UPDATE_PAGE		1
>>> +#define IXGBE_ACI_SFF_UPDATE_BANK		2
>>> +#define IXGBE_ACI_SFF_UPDATE_PAGE_BANK		3
>>> +#define IXGBE_ACI_SFF_IS_WRITE			BIT(15)
>>> +	__le16 i2c_offset;
>>> +	u8 module_bank;
>>> +	u8 module_page;
>>> +	__le32 addr_high;
>>> +	__le32 addr_low;
>>> +};
>>> +
>>> +/* NVM Read command (indirect 0x0701)
>>> + * NVM Erase commands (direct 0x0702)
>>> + * NVM Write commands (indirect 0x0703)
>>> + * NVM Write Activate commands (direct 0x0707)
>>> + * NVM Shadow RAM Dump commands (direct 0x0707)
>>> + */
>>> +struct ixgbe_aci_cmd_nvm {
>>> +#define IXGBE_ACI_NVM_MAX_OFFSET	0xFFFFFF
>>> +	__le16 offset_low;
>>> +	u8 offset_high; /* For Write Activate offset_high is used as flags2 */
>>> +	u8 cmd_flags;
>>> +#define IXGBE_ACI_NVM_LAST_CMD		BIT(0)
>>> +#define IXGBE_ACI_NVM_PCIR_REQ		BIT(0) /* Used by NVM Write reply */
>>> +#define IXGBE_ACI_NVM_PRESERVE_ALL	BIT(1)
>>> +#define IXGBE_ACI_NVM_ACTIV_SEL_NVM	BIT(3) /* Write Activate/SR Dump only */
>>> +#define IXGBE_ACI_NVM_ACTIV_SEL_OROM	BIT(4)
>>> +#define IXGBE_ACI_NVM_ACTIV_SEL_NETLIST	BIT(5)
>>> +#define IXGBE_ACI_NVM_SPECIAL_UPDATE	BIT(6)
>>> +#define IXGBE_ACI_NVM_REVERT_LAST_ACTIV	BIT(6) /* Write Activate only */
>>> +#define IXGBE_ACI_NVM_FLASH_ONLY	BIT(7)
>>> +#define IXGBE_ACI_NVM_RESET_LVL_M	GENMASK(1, 0) /* Write reply only */
>>> +#define IXGBE_ACI_NVM_POR_FLAG		0
>>> +#define IXGBE_ACI_NVM_PERST_FLAG	1
>>> +#define IXGBE_ACI_NVM_EMPR_FLAG		2
>>> +#define IXGBE_ACI_NVM_EMPR_ENA		BIT(0) /* Write Activate reply only */
>>> +	/* For Write Activate, several flags are sent as part of a separate
>>> +	 * flags2 field using a separate byte. For simplicity of the software
>>> +	 * interface, we pass the flags as a 16 bit value so these flags are
>>> +	 * all offset by 8 bits
>>> +	 */
>>> +#define IXGBE_ACI_NVM_ACTIV_REQ_EMPR	BIT(8) /* NVM Write Activate only */
>>> +	__le16 module_typeid;
>>> +	__le16 length;
>>> +#define IXGBE_ACI_NVM_ERASE_LEN	0xFFFF
>>> +	__le32 addr_high;
>>> +	__le32 addr_low;
>>> +};
>>> +
>>> +/* NVM Module_Type ID, needed offset and read_len for
>>> + * struct ixgbe_aci_cmd_nvm.
>>> + */
>>> +#define IXGBE_ACI_NVM_START_POINT		0
>>> +
>>> +/* NVM Checksum Command (direct, 0x0706) */
>>> +struct ixgbe_aci_cmd_nvm_checksum {
>>> +	u8 flags;
>>> +#define IXGBE_ACI_NVM_CHECKSUM_VERIFY	BIT(0)
>>> +#define IXGBE_ACI_NVM_CHECKSUM_RECALC	BIT(1)
>>> +	u8 rsvd;
>>> +	__le16 checksum; /* Used only by response */
>>> +#define IXGBE_ACI_NVM_CHECKSUM_CORRECT	0xBABA
>>> +	u8 rsvd2[12];
>>> +};
>>> +
>>> +/**
>>> + * struct ixgbe_aq_desc - Admin Command (AC) descriptor
>>> + * @flags: IXGBE_ACI_FLAG_* flags
>>> + * @opcode: Admin command opcode
>>> + * @datalen: length in bytes of indirect/external data buffer
>>> + * @retval: return value from firmware
>>> + * @cookie_high: opaque data high-half
>>> + * @cookie_low: opaque data low-half
>>> + * @params: command-specific parameters
>>> + *
>>> + * Descriptor format for commands the driver posts via the
>>> + * Admin Command Interface (ACI).
>>> + * The firmware writes back onto the command descriptor and returns
>>> + * the result of the command. Asynchronous events that are not an immediate
>>> + * result of the command are written to the Admin Command Interface (ACI) using
>>> + * the same descriptor format. Descriptors are in little-endian notation with
>>> + * 32-bit words.
>>> + */
>>> +struct ixgbe_aci_desc {
>>> +	__le16 flags;
>>> +	__le16 opcode;
>>> +	__le16 datalen;
>>> +	__le16 retval;
>>> +	__le32 cookie_high;
>>> +	__le32 cookie_low;
>>> +	union {
>>> +		u8 raw[16];
>>> +		struct ixgbe_aci_cmd_get_ver get_ver;
>>> +		struct ixgbe_aci_cmd_driver_ver driver_ver;
>>> +		struct ixgbe_aci_cmd_get_exp_err exp_err;
>>> +		struct ixgbe_aci_cmd_req_res res_owner;
>>> +		struct ixgbe_aci_cmd_list_caps get_cap;
>>> +		struct ixgbe_aci_cmd_disable_rxen disable_rxen;
>>> +		struct ixgbe_aci_cmd_get_phy_caps get_phy;
>>> +		struct ixgbe_aci_cmd_set_phy_cfg set_phy;
>>> +		struct ixgbe_aci_cmd_restart_an restart_an;
>>> +		struct ixgbe_aci_cmd_get_link_status get_link_status;
>>> +		struct ixgbe_aci_cmd_set_event_mask set_event_mask;
>>> +		struct ixgbe_aci_cmd_get_link_topo get_link_topo;
>>> +		struct ixgbe_aci_cmd_get_link_topo_pin get_link_topo_pin;
>>> +		struct ixgbe_aci_cmd_sff_eeprom read_write_sff_param;
>>> +		struct ixgbe_aci_cmd_nvm nvm;
>>> +		struct ixgbe_aci_cmd_nvm_checksum nvm_checksum;
>>> +	} params;
>>> +};
>>> +
>>> +/* E610-specific adapter context structures */
>>> +
>>> +struct ixgbe_link_status {
>>> +	/* Refer to ixgbe_aci_phy_type for bits definition */
>>> +	u64 phy_type_low;
>>> +	u64 phy_type_high;
>>> +	u16 max_frame_size;
>>> +	u16 link_speed;
>>> +	u16 req_speeds;
>>> +	u8 topo_media_conflict;
>>> +	u8 link_cfg_err;
>>> +	u8 lse_ena;	/* Link Status Event notification */
>>> +	u8 link_info;
>>> +	u8 an_info;
>>> +	u8 ext_info;
>>> +	u8 fec_info;
>>> +	u8 pacing;
>>> +	/* Refer to #define from module_type[IXGBE_ACI_MODULE_TYPE_TOTAL_BYTE]
>>> +	 * of ixgbe_aci_get_phy_caps structure
>>> +	 */
>>> +	u8 module_type[IXGBE_ACI_MODULE_TYPE_TOTAL_BYTE];
>>> +};
>>> +
>>> +/* Common HW capabilities for SW use */
>>> +struct ixgbe_hw_caps {
>>> +	/* Write CSR protection */
>>> +	u64 wr_csr_prot;
>>> +	u32 switching_mode;
>>> +	/* switching mode supported - EVB switching (including cloud) */
>>> +#define IXGBE_NVM_IMAGE_TYPE_EVB		0x0
>>> +
>>> +	/* Manageability mode & supported protocols over MCTP */
>>> +	u32 mgmt_mode;
>>> +#define IXGBE_MGMT_MODE_PASS_THRU_MODE_M	GENMASK(3, 0)
>>> +#define IXGBE_MGMT_MODE_CTL_INTERFACE_M		GENMASK(7, 4)
>>> +#define IXGBE_MGMT_MODE_REDIR_SB_INTERFACE_M	GENMASK(11, 8)
>>> +
>>> +	u32 mgmt_protocols_mctp;
>>> +#define IXGBE_MGMT_MODE_PROTO_RSVD	BIT(0)
>>> +#define IXGBE_MGMT_MODE_PROTO_PLDM	BIT(1)
>>> +#define IXGBE_MGMT_MODE_PROTO_OEM	BIT(2)
>>> +#define IXGBE_MGMT_MODE_PROTO_NC_SI	BIT(3)
>>> +
>>> +	u32 os2bmc;
>>> +	u32 valid_functions;
>>> +	/* DCB capabilities */
>>> +	u32 active_tc_bitmap;
>>> +	u32 maxtc;
>>> +
>>> +	/* RSS related capabilities */
>>> +	u32 rss_table_size;		/* 512 for PFs and 64 for VFs */
>>> +	u32 rss_table_entry_width;	/* RSS Entry width in bits */
>>> +
>>> +	/* Tx/Rx queues */
>>> +	u32 num_rxq;			/* Number/Total Rx queues */
>>> +	u32 rxq_first_id;		/* First queue ID for Rx queues */
>>> +	u32 num_txq;			/* Number/Total Tx queues */
>>> +	u32 txq_first_id;		/* First queue ID for Tx queues */
>>> +
>>> +	/* MSI-X vectors */
>>> +	u32 num_msix_vectors;
>>> +	u32 msix_vector_first_id;
>>> +
>>> +	/* Max MTU for function or device */
>>> +	u32 max_mtu;
>>> +
>>> +	/* WOL related */
>>> +	u32 num_wol_proxy_fltr;
>>> +	u32 wol_proxy_vsi_seid;
>>> +
>>> +	/* LED/SDP pin count */
>>> +	u32 led_pin_num;
>>> +	u32 sdp_pin_num;
>>> +
>>> +	/* LED/SDP - Supports up to 12 LED pins and 8 SDP signals */
>>> +#define IXGBE_MAX_SUPPORTED_GPIO_LED	12
>>> +#define IXGBE_MAX_SUPPORTED_GPIO_SDP	8
>>> +	u8 led[IXGBE_MAX_SUPPORTED_GPIO_LED];
>>> +	u8 sdp[IXGBE_MAX_SUPPORTED_GPIO_SDP];
>>> +	/* SR-IOV virtualization */
>>> +	u8 sr_iov_1_1;			/* SR-IOV enabled */
>>> +	/* VMDQ */
>>> +	u8 vmdq;			/* VMDQ supported */
>>> +
>>> +	/* EVB capabilities */
>>> +	u8 evb_802_1_qbg;		/* Edge Virtual Bridging */
>>> +	u8 evb_802_1_qbh;		/* Bridge Port Extension */
>>> +
>>> +	u8 dcb;
>>> +	u8 iscsi;
>>> +	u8 ieee_1588;
>>> +	u8 mgmt_cem;
>>> +
>>> +	/* WoL and APM support */
>>> +#define IXGBE_WOL_SUPPORT_M		BIT(0)
>>> +#define IXGBE_ACPI_PROG_MTHD_M		BIT(1)
>>> +#define IXGBE_PROXY_SUPPORT_M		BIT(2)
>>> +	u8 apm_wol_support;
>>> +	u8 acpi_prog_mthd;
>>> +	u8 proxy_support;
>>> +	bool nvm_update_pending_nvm;
>>> +	bool nvm_update_pending_orom;
>>> +	bool nvm_update_pending_netlist;
>>> +#define IXGBE_NVM_PENDING_NVM_IMAGE		BIT(0)
>>> +#define IXGBE_NVM_PENDING_OROM			BIT(1)
>>> +#define IXGBE_NVM_PENDING_NETLIST		BIT(2)
>>> +	bool sec_rev_disabled;
>>> +	bool update_disabled;
>>> +	bool nvm_unified_update;
>>> +	bool netlist_auth;
>>> +#define IXGBE_NVM_MGMT_SEC_REV_DISABLED		BIT(0)
>>> +#define IXGBE_NVM_MGMT_UPDATE_DISABLED		BIT(1)
>>> +#define IXGBE_NVM_MGMT_UNIFIED_UPD_SUPPORT	BIT(3)
>>> +#define IXGBE_NVM_MGMT_NETLIST_AUTH_SUPPORT	BIT(5)
>>> +	bool no_drop_policy_support;
>>> +	/* PCIe reset avoidance */
>>> +	bool pcie_reset_avoidance; /* false: not supported, true: supported */
>>> +	/* Post update reset restriction */
>>> +	bool reset_restrict_support; /* false: not supported, true: supported */
>>> +
>>> +	/* External topology device images within the NVM */
>>> +#define IXGBE_EXT_TOPO_DEV_IMG_COUNT	4
>>> +	u32 ext_topo_dev_img_ver_high[IXGBE_EXT_TOPO_DEV_IMG_COUNT];
>>> +	u32 ext_topo_dev_img_ver_low[IXGBE_EXT_TOPO_DEV_IMG_COUNT];
>>> +	u8 ext_topo_dev_img_part_num[IXGBE_EXT_TOPO_DEV_IMG_COUNT];
>>> +#define IXGBE_EXT_TOPO_DEV_IMG_PART_NUM_S	8
>>> +#define IXGBE_EXT_TOPO_DEV_IMG_PART_NUM_M	GENMASK(15, 8)
>>> +	bool ext_topo_dev_img_load_en[IXGBE_EXT_TOPO_DEV_IMG_COUNT];
>>> +#define IXGBE_EXT_TOPO_DEV_IMG_LOAD_EN	BIT(0)
>>> +	bool ext_topo_dev_img_prog_en[IXGBE_EXT_TOPO_DEV_IMG_COUNT];
>>> +#define IXGBE_EXT_TOPO_DEV_IMG_PROG_EN	BIT(1)
>>> +} __packed;
>>> +
>>> +/* Function specific capabilities */
>>> +struct ixgbe_hw_func_caps {
>>> +	u32 num_allocd_vfs;		/* Number of allocated VFs */
>>> +	u32 vf_base_id;			/* Logical ID of the first VF */
>>> +	u32 guar_num_vsi;
>>> +	struct ixgbe_hw_caps common_cap;
>>> +	bool no_drop_policy_ena;
>>> +};
>>> +
>>> +/* Device wide capabilities */
>>> +struct ixgbe_hw_dev_caps {
>>> +	struct ixgbe_hw_caps common_cap;
>>> +	u32 num_vfs_exposed;		/* Total number of VFs exposed */
>>> +	u32 num_vsi_allocd_to_host;	/* Excluding EMP VSI */
>>> +	u32 num_flow_director_fltr;	/* Number of FD filters available */
>>> +	u32 num_funcs;
>>> +};
>>> +
>>> +/* ACI event information */
>>> +struct ixgbe_aci_event {
>>> +	struct ixgbe_aci_desc desc;
>>> +	u8 *msg_buf;
>>> +	u16 msg_len;
>>> +	u16 buf_len;
>>> +};
>>> +
>>> +struct ixgbe_aci_info {
>>> +	struct mutex lock;		/* admin command interface lock */
>>> +	enum ixgbe_aci_err last_status;	/* last status of sent admin command */
>>> +};
>>> +
>>> +/* Option ROM version information */
>>> +struct ixgbe_orom_info {
>>> +	u8 major;			/* Major version of OROM */
>>> +	u8 patch;			/* Patch version of OROM */
>>> +	u16 build;			/* Build version of OROM */
>>> +	u32 srev;			/* Security revision */
>>> +};
>>> +
>>> +/* NVM version information */
>>> +struct ixgbe_nvm_info {
>>> +	u32 eetrack;
>>> +	u32 srev;
>>> +	u8 major;
>>> +	u8 minor;
>>> +} __packed;
>>> +
>>> +/* netlist version information */
>>> +struct ixgbe_netlist_info {
>>> +	u32 major;			/* major high/low */
>>> +	u32 minor;			/* minor high/low */
>>> +	u32 type;			/* type high/low */
>>> +	u32 rev;			/* revision high/low */
>>> +	u32 hash;			/* SHA-1 hash word */
>>> +	u16 cust_ver;			/* customer version */
>>> +} __packed;
>>> +
>>> +/* Enumeration of possible flash banks for the NVM, OROM, and Netlist modules
>>> + * of the flash image.
>>> + */
>>> +enum ixgbe_flash_bank {
>>> +	IXGBE_INVALID_FLASH_BANK,
>>> +	IXGBE_1ST_FLASH_BANK,
>>> +	IXGBE_2ND_FLASH_BANK,
>>> +};
>>> +
>>> +/* information for accessing NVM, OROM, and Netlist flash banks */
>>> +struct ixgbe_bank_info {
>>> +	u32 nvm_ptr;				/* Pointer to 1st NVM bank */
>>> +	u32 nvm_size;				/* Size of NVM bank */
>>> +	u32 orom_ptr;				/* Pointer to 1st OROM bank */
>>> +	u32 orom_size;				/* Size of OROM bank */
>>> +	u32 netlist_ptr;			/* Ptr to 1st Netlist bank */
>>> +	u32 netlist_size;			/* Size of Netlist bank */
>>> +	enum ixgbe_flash_bank nvm_bank;		/* Active NVM bank */
>>> +	enum ixgbe_flash_bank orom_bank;	/* Active OROM bank */
>>> +	enum ixgbe_flash_bank netlist_bank;	/* Active Netlist bank */
>>> +};
>>> +
>>> +/* Flash Chip Information */
>>> +struct ixgbe_flash_info {
>>> +	struct ixgbe_orom_info orom;	/* Option ROM version info */
>>> +	u32 flash_size;			/* Available flash size in bytes */
>>> +	struct ixgbe_nvm_info nvm;	/* NVM version information */
>>> +	struct ixgbe_netlist_info netlist;	/* Netlist version info */
>>> +	struct ixgbe_bank_info banks;	/* Flash Bank information */
>>> +	u16 sr_words;			/* Shadow RAM size in words */
>>> +	u8 blank_nvm_mode;		/* is NVM empty (no FW present) */
>>> +};
>>> +
>>> +
>>> +
>>> +#endif /* _IXGBE_TYPE_E610_H_ */
>>> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
>>> new file mode 100644
>>> index 0000000..350d41a
>>> --- /dev/null
>>> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h
>>> @@ -0,0 +1,15 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/* Copyright(c) 1999 - 2024 Intel Corporation. */
>>> +
>>> +#ifndef _IXGBE_X550_H_
>>> +#define _IXGBE_X550_H_
>>> +
>>> +#include "ixgbe_type.h"
>>> +
>>> +extern const u32 ixgbe_mvals_x550em_a[IXGBE_MVALS_IDX_LIMIT];
>>> +
>>> +s32 ixgbe_set_fw_drv_ver_x550(struct ixgbe_hw *hw, u8 maj, u8 min,
>>> +			      u8 build, u8 sub, u16 len,
>>> +			      const char *driver_ver);
>>
>>This change seems unrelated.
> Another concern also encouraged me to move it to patch #5
>
> Thank you for review.
> Piotr
>
>>
>>> +
>>> +#endif /* _IXGBE_X550_H_ */
>>> -- 
>>> 2.31.1
>>>
>>
>>-- 
>>Vinicius
>>
>>


Cheers,
-- 
Vinicius
