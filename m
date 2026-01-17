Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B441DD38EB6
	for <lists+intel-wired-lan@lfdr.de>; Sat, 17 Jan 2026 14:35:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C8F041407;
	Sat, 17 Jan 2026 13:35:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NcuZ5RHXJmTZ; Sat, 17 Jan 2026 13:35:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AEC1F41406
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768656905;
	bh=wi4EuRCxMD1W8h41Nc6xLsfyGo56XLLvkuTvDdzJZBk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lDQ3277LMURSsP/x7+gvpRvupFGwDHr1dDBTjzSh2GeLvPFT+xHmchkRlHFliWqH+
	 EBjjQraZQaJMv1UIs7GAs2mZEriLbdp4ZyLwBCJerjWWREsiqDRFA36KUe7+uXitse
	 RtCzEfbyAAnLR4P37svlm9G4CmcmJ6/9zoF8rHfclFOMDbithQmo0VrgkxCAkLi195
	 fU3yAhF4NJikr2Z8wo07vUSG74P1FX/8isuI5nwrJsbGNp4heD7FBikN0VnRzYJt5N
	 uaFxXPy1vH8P3VtgADxK0YrBXEVSs3tT9c0yybjB+H46sqZW0DIs1RScdN+4QibhtI
	 rm8xOsoGLBa6w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AEC1F41406;
	Sat, 17 Jan 2026 13:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EAAA2347
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 13:35:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D506241403
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 13:35:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0xTD3VgqxIKD for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Jan 2026 13:35:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A69F040C60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A69F040C60
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A69F040C60
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Jan 2026 13:35:02 +0000 (UTC)
X-CSE-ConnectionGUID: P4uD23AFTO+tEdhXJxJWWg==
X-CSE-MsgGUID: rJWFOE7KR1mLY6gmf6aj7Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11674"; a="95418864"
X-IronPort-AV: E=Sophos;i="6.21,234,1763452800"; d="scan'208";a="95418864"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2026 05:35:02 -0800
X-CSE-ConnectionGUID: J7dGuL60SLy+9iiPMR2yrQ==
X-CSE-MsgGUID: 2xZOaTjMQ7mwC9YiqGksGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,234,1763452800"; d="scan'208";a="210482909"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 17 Jan 2026 05:34:59 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vh6S7-00000000Lse-3guE;
 Sat, 17 Jan 2026 13:34:55 +0000
Date: Sat, 17 Jan 2026 21:34:55 +0800
From: kernel test robot <lkp@intel.com>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 dan.carpenter@linaro.org, horms@kernel.org,
 Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <202601172130.UkaUgjIE-lkp@intel.com>
References: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260116122353.78235-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768656903; x=1800192903;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YJLn4OUeFverMjOgEXLG89mwU6rhIp33L4m9Ox1ziD4=;
 b=iKaE3aiEf3OtNA/f+sh9Rdn0UUXKHXMPakkq18wB166TnKkrffoHfr44
 fYNxVB/ica/6KDIy3RO0WGoE6H05L7kQ0fYYrizRan4D9c9GNri20w2pX
 IJqVmPp/hkSw0R9yO0NzR+S8Fm2iTAvyNVF9XYW1acNLpMs82A4Ds8Yff
 BznCZPx1KgZrw/ijoqD8auo+m8RZn4ox42jeCV3Xx3rxwqTID/XSFAvAb
 Vb4o3OvTDq5ZzJFZaWJqS1UsoUYQsrM9fSZ3pCk/3esXRfbOj9YZOo/gk
 8A2y3hFDjpjHFZ5JxBVM1FAcxgHkkQwWwsFXtvhZGB79yCOHwioj2CYqz
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iKaE3aiE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] ixgbe: e610: add missing
 endianness conversion
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

Hi Piotr,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Piotr-Kwapulinski/ixgbe-e610-add-missing-endianness-conversion/20260116-200705
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20260116122353.78235-1-piotr.kwapulinski%40intel.com
patch subject: [PATCH iwl-next 1/2] ixgbe: e610: add missing endianness conversion
config: x86_64-randconfig-r111-20260117 (https://download.01.org/0day-ci/archive/20260117/202601172130.UkaUgjIE-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260117/202601172130.UkaUgjIE-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202601172130.UkaUgjIE-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:116:17: sparse: sparse: cast to restricted __le32
>> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:149:37: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned int [usertype] @@     got restricted __le32 [usertype] @@
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:149:37: sparse:     expected unsigned int [usertype]
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:149:37: sparse:     got restricted __le32 [usertype]
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:157:37: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned int [usertype] @@     got restricted __le32 [usertype] @@
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:157:37: sparse:     expected unsigned int [usertype]
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:157:37: sparse:     got restricted __le32 [usertype]

vim +116 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c

    35	
    36	/**
    37	 * ixgbe_aci_send_cmd_execute - execute sending FW Admin Command to FW Admin
    38	 * Command Interface
    39	 * @hw: pointer to the HW struct
    40	 * @desc: descriptor describing the command
    41	 * @buf: buffer to use for indirect commands (NULL for direct commands)
    42	 * @buf_size: size of buffer for indirect commands (0 for direct commands)
    43	 *
    44	 * Admin Command is sent using CSR by setting descriptor and buffer in specific
    45	 * registers.
    46	 *
    47	 * Return: the exit code of the operation.
    48	 * * - 0 - success.
    49	 * * - -EIO - CSR mechanism is not enabled.
    50	 * * - -EBUSY - CSR mechanism is busy.
    51	 * * - -EINVAL - buf_size is too big or
    52	 * invalid argument buf or buf_size.
    53	 * * - -ETIME - Admin Command X command timeout.
    54	 * * - -EIO - Admin Command X invalid state of HICR register or
    55	 * Admin Command failed because of bad opcode was returned or
    56	 * Admin Command failed with error Y.
    57	 */
    58	static int ixgbe_aci_send_cmd_execute(struct ixgbe_hw *hw,
    59					      struct libie_aq_desc *desc,
    60					      void *buf, u16 buf_size)
    61	{
    62		u16 opcode, buf_tail_size = buf_size % 4;
    63		u32 *raw_desc = (u32 *)desc;
    64		u32 hicr, i, buf_tail = 0;
    65		bool valid_buf = false;
    66	
    67		hw->aci.last_status = LIBIE_AQ_RC_OK;
    68	
    69		/* It's necessary to check if mechanism is enabled */
    70		hicr = IXGBE_READ_REG(hw, IXGBE_PF_HICR);
    71	
    72		if (!(hicr & IXGBE_PF_HICR_EN))
    73			return -EIO;
    74	
    75		if (hicr & IXGBE_PF_HICR_C) {
    76			hw->aci.last_status = LIBIE_AQ_RC_EBUSY;
    77			return -EBUSY;
    78		}
    79	
    80		opcode = le16_to_cpu(desc->opcode);
    81	
    82		if (buf_size > IXGBE_ACI_MAX_BUFFER_SIZE)
    83			return -EINVAL;
    84	
    85		if (buf)
    86			desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_BUF);
    87	
    88		if (desc->flags & cpu_to_le16(LIBIE_AQ_FLAG_BUF)) {
    89			if ((buf && !buf_size) ||
    90			    (!buf && buf_size))
    91				return -EINVAL;
    92			if (buf && buf_size)
    93				valid_buf = true;
    94		}
    95	
    96		if (valid_buf) {
    97			if (buf_tail_size)
    98				memcpy(&buf_tail, buf + buf_size - buf_tail_size,
    99				       buf_tail_size);
   100	
   101			if (((buf_size + 3) & ~0x3) > LIBIE_AQ_LG_BUF)
   102				desc->flags |= cpu_to_le16(LIBIE_AQ_FLAG_LB);
   103	
   104			desc->datalen = cpu_to_le16(buf_size);
   105	
   106			if (desc->flags & cpu_to_le16(LIBIE_AQ_FLAG_RD)) {
   107				for (i = 0; i < buf_size / 4; i++)
   108					IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i), ((u32 *)buf)[i]);
   109				if (buf_tail_size)
   110					IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i), buf_tail);
   111			}
   112		}
   113	
   114		/* Descriptor is written to specific registers */
   115		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 > 116			IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
   117					le32_to_cpu(raw_desc[i]));
   118	
   119		/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
   120		 * PF_HICR_EV
   121		 */
   122		hicr = (IXGBE_READ_REG(hw, IXGBE_PF_HICR) | IXGBE_PF_HICR_C) &
   123		       ~(IXGBE_PF_HICR_SV | IXGBE_PF_HICR_EV);
   124		IXGBE_WRITE_REG(hw, IXGBE_PF_HICR, hicr);
   125	
   126	#define MAX_SLEEP_RESP_US 1000
   127	#define MAX_TMOUT_RESP_SYNC_US 100000000
   128	
   129		/* Wait for sync Admin Command response */
   130		read_poll_timeout(IXGBE_READ_REG, hicr,
   131				  (hicr & IXGBE_PF_HICR_SV) ||
   132				  !(hicr & IXGBE_PF_HICR_C),
   133				  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_SYNC_US, true, hw,
   134				  IXGBE_PF_HICR);
   135	
   136	#define MAX_TMOUT_RESP_ASYNC_US 150000000
   137	
   138		/* Wait for async Admin Command response */
   139		read_poll_timeout(IXGBE_READ_REG, hicr,
   140				  (hicr & IXGBE_PF_HICR_EV) ||
   141				  !(hicr & IXGBE_PF_HICR_C),
   142				  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_ASYNC_US, true, hw,
   143				  IXGBE_PF_HICR);
   144	
   145		/* Read sync Admin Command response */
   146		if ((hicr & IXGBE_PF_HICR_SV)) {
   147			for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
   148				raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
 > 149				raw_desc[i] = cpu_to_le32(raw_desc[i]);
   150			}
   151		}
   152	
   153		/* Read async Admin Command response */
   154		if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
   155			for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
   156				raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
   157				raw_desc[i] = cpu_to_le32(raw_desc[i]);
   158			}
   159		}
   160	
   161		/* Handle timeout and invalid state of HICR register */
   162		if (hicr & IXGBE_PF_HICR_C)
   163			return -ETIME;
   164	
   165		if (!(hicr & IXGBE_PF_HICR_SV) && !(hicr & IXGBE_PF_HICR_EV))
   166			return -EIO;
   167	
   168		/* For every command other than 0x0014 treat opcode mismatch
   169		 * as an error. Response to 0x0014 command read from HIDA_2
   170		 * is a descriptor of an event which is expected to contain
   171		 * different opcode than the command.
   172		 */
   173		if (desc->opcode != cpu_to_le16(opcode) &&
   174		    opcode != ixgbe_aci_opc_get_fw_event)
   175			return -EIO;
   176	
   177		if (desc->retval) {
   178			hw->aci.last_status = (enum libie_aq_err)
   179				le16_to_cpu(desc->retval);
   180			return -EIO;
   181		}
   182	
   183		/* Write a response values to a buf */
   184		if (valid_buf) {
   185			for (i = 0; i < buf_size / 4; i++)
   186				((u32 *)buf)[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIBA(i));
   187			if (buf_tail_size) {
   188				buf_tail = IXGBE_READ_REG(hw, IXGBE_PF_HIBA(i));
   189				memcpy(buf + buf_size - buf_tail_size, &buf_tail,
   190				       buf_tail_size);
   191			}
   192		}
   193	
   194		return 0;
   195	}
   196	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
