Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B63196C8E
	for <lists+intel-wired-lan@lfdr.de>; Sun, 29 Mar 2020 12:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 04E4A20403;
	Sun, 29 Mar 2020 10:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvMfcVakL3wQ; Sun, 29 Mar 2020 10:40:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DE8622046F;
	Sun, 29 Mar 2020 10:40:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A658F1BF326
 for <intel-wired-lan@osuosl.org>; Sun, 29 Mar 2020 10:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A208385FA3
 for <intel-wired-lan@osuosl.org>; Sun, 29 Mar 2020 10:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tSbEGnLo41lf for <intel-wired-lan@osuosl.org>;
 Sun, 29 Mar 2020 10:40:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6E72985FB6
 for <intel-wired-lan@osuosl.org>; Sun, 29 Mar 2020 10:40:02 +0000 (UTC)
IronPort-SDR: fFKi61+7s4+LIbMq7TmUw5/kMpZLA+qtyxpxIzBS9BdmSDR2biJxwZfCJoyudKDWBr4H0EGlH4
 vSj+GwmWvMMA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2020 03:40:01 -0700
IronPort-SDR: Lmjs1hIkQJOw1bCIApYniG2Rft0jb/TT9rACjTOs2FLIjHoDEmkHytM7yuXeVhJ27RVK7XPxCM
 rnSLhUN98Bww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,319,1580803200"; d="scan'208";a="272072077"
Received: from vlifsht-mobl.ger.corp.intel.com (HELO [10.214.211.27])
 ([10.214.211.27])
 by fmsmga004.fm.intel.com with ESMTP; 29 Mar 2020 03:40:00 -0700
To: Andre Guedes <andre.guedes@linux.intel.com>, intel-wired-lan@osuosl.org
References: <20200322184909.19122-1-vitaly.lifshits@intel.com>
 <158509544149.2475.17714180585378673278@johnorte-mobl2.amr.corp.intel.com>
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <47484f39-7966-494e-5988-9af1760bd1aa@intel.com>
Date: Sun, 29 Mar 2020 13:39:59 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158509544149.2475.17714180585378673278@johnorte-mobl2.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v3] igc: add support to interrupt,
 eeprom, registers and link self-tests
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Andre,

Sorry for the late response. I needed to debug the fails.

On 3/25/2020 02:17, Andre Guedes wrote:
> Hi Vitaly,
> 
> Quoting Vitaly Lifshits (2020-03-22 11:49:09)
>> Introduced igc_diag.c and igc_diag.h, these files have the
>> diagnostics functionality of igc driver. For the time being
>> these files are being used by ethtool self-test callbacks.
>> Which mean that interrupt, eeprom, registers and link self-tests for
>> ethtool were implemented.
>>
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> Reported-by: kbuild test robot <lkp@intel.com>
>> ---
>> v2: Fix return 0/1 to boolean value in igc_reg_test function
>> v3: Address community comments
> 
> When I run the offline tests, the interrupt test fails:
> 
> $ sudo ethtool -t enp2s0 offline
> The test result is FAIL
> The test extra info:
> Register test  (offline)         0
> Eeprom test    (offline)         0
> Interrupt test (offline)         4
> Loopback test  (offline)         0
> Link test   (on/offline)         0
> 
> Is this expected?
No, it means that the test failed for MSI-X interrupts.
I debugged it and found the issue, I'll send a new patch that doesn't 
fail soon.
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
>> index 4823b8ead547..1685609cd15f 100644
> ...
>> +enum igc_ethtool_test_id {
>> +       IGC_ETH_TEST_REG = 0,
>> +       IGC_ETH_TEST_EEPROM,
>> +       IGC_ETH_TEST_INTR,
>> +       IGC_ETH_TEST_LOOP,
>> +       IGC_ETH_TEST_LINK,
>> +};
> 
> I seems this enum is only used in igc_ethtool.c so how about we defined it
> there intead of in igc.h?I'd rather leave it in igc.h, I think it is more natural for structs to 
be defined in .h files and not .c.
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_diag.c b/drivers/net/ethernet/intel/igc/igc_diag.c
>> new file mode 100644
>> index 000000000000..56acc9b8447e
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/igc/igc_diag.c
>> @@ -0,0 +1,326 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/* Copyright (c)  2018 Intel Corporation */
> 
> s/2018/2020/
> 
>> diff --git a/drivers/net/ethernet/intel/igc/igc_diag.h b/drivers/net/ethernet/intel/igc/igc_diag.h
>> new file mode 100644
>> index 000000000000..aa5a474d9bb4
>> --- /dev/null
>> +++ b/drivers/net/ethernet/intel/igc/igc_diag.h
>> @@ -0,0 +1,37 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/* Copyright (c)  2018 Intel Corporation */
> 
> s/2018/2020/
Thanks for noticing it, it will be updated in v4.
> 
>> +bool igc_reg_test(struct igc_adapter *adapter, u64 *data);
>> +bool igc_eeprom_test(struct igc_adapter *adapter, u64 *data);
>> +int igc_intr_test(struct igc_adapter *adapter, u64 *data);
>> +u64 igc_link_test(struct igc_adapter *adapter, u64 *data);
> 
> These APIs return different types (bool, int, u64)? They all could return bool,
> making them more consistent and easier to read.

After reviewing it, it can be changed to bool. I'll fix it as well.

> 
>> +struct igc_reg_test {
>> +       u16 reg;
>> +       u8 array_len;
>> +       u8 test_type;
>> +       u32 mask;
>> +       u32 write;
>> +};
> 
> It seems this struct is used only in igc_diag.c, so how about we define it
> there instead of here?
I prefer to leave it in igc_diag.h.
> 
>> +/* In the hardware, registers are laid out either singly, in arrays
>> + * spaced 0x40 bytes apart, or in contiguous tables.  We assume
>> + * most tests take place on arrays or single registers (handled
>> + * as a single-element array) and special-case the tables.
>> + * Table tests are always pattern tests.
>> + *
>> + * We also make provision for some required setup steps by specifying
>> + * registers to be written without any read-back testing.
>> + */
>> +
>> +#define PATTERN_TEST   1
>> +#define SET_READ_TEST  2
>> +#define TABLE32_TEST   3
>> +#define TABLE64_TEST_LO        4
>> +#define TABLE64_TEST_HI        5
> 
> The comment above applies to these macros here as well.
> 
>> +
>> +#define ETH_REG_TEST   0
>> +#define ETH_EEPROM_TEST        1
>> +#define ETH_INTR_TEST  2
>> +#define ETH_LOOP_TEST  3
>> +#define ETH_LINK_TEST  4
> 
> None of the macros above are used in this patch.
You are right! Thanks for noticing.
> 
> Regards,
> 
> Andre
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
