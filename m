Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E37CA15D93
	for <lists+intel-wired-lan@lfdr.de>; Sat, 18 Jan 2025 16:06:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DD3D6080F;
	Sat, 18 Jan 2025 15:06:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WK3CnQD4Ubsu; Sat, 18 Jan 2025 15:06:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62FE360801
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737212791;
	bh=J1yCZ+tEihTKAxlVgwJLiJDPd0kSRyz7c1C2RtWRJJc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TvlwU7pZ/q2do4ABMFNpqEEivl2HOxZs0JXYq8mDWzJlgyv9jdhYqrx9AdoocwCGJ
	 hdV0l+QHBkQGHANRuv7BpZngfCJuvSMefDbGBEFwCSKAvwpINOvq1PjA9Oy2a+Tht1
	 6M92FTnkguwAgsGFCxhicQP620rAeBKt9yxDGqnvXligUk5IgjLlhO5JR9+z/1O8ZD
	 1havh9wvXSQSkVaNZgRDVIVV2o/NrqasB5o1iXmZGa3ikN24o+6fCeSXp24er0ZD6X
	 1OB3U1zrUgbivT+1cT1Bq+TNmo+vrDWuubdmDFaLLtndrEn49YFwgQy6dbury+gIRj
	 mZcfDNDe4gEXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62FE360801;
	Sat, 18 Jan 2025 15:06:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D859769
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 15:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5F0D80488
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 15:06:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gHP2s83IDV_Q for <intel-wired-lan@lists.osuosl.org>;
 Sat, 18 Jan 2025 15:06:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7621A80382
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7621A80382
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7621A80382
 for <intel-wired-lan@lists.osuosl.org>; Sat, 18 Jan 2025 15:06:26 +0000 (UTC)
X-CSE-ConnectionGUID: W0OcmA89Rv2bHBRLL6v+sg==
X-CSE-MsgGUID: YsVtjBEcQhGZ0SJrxdRniw==
X-IronPort-AV: E=McAfee;i="6700,10204,11319"; a="40441845"
X-IronPort-AV: E=Sophos;i="6.13,215,1732608000"; d="scan'208";a="40441845"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2025 07:06:25 -0800
X-CSE-ConnectionGUID: GVt/J22KTRigIsneYF6tCA==
X-CSE-MsgGUID: mKToLFB0S+GrKaWFyEE2XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,215,1732608000"; d="scan'208";a="105876611"
Received: from lkp-server01.sh.intel.com (HELO d63d4d77d921) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 18 Jan 2025 07:06:21 -0800
Received: from kbuild by d63d4d77d921 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1tZAOx-000UXD-0Q;
 Sat, 18 Jan 2025 15:06:19 +0000
Date: Sat, 18 Jan 2025 23:05:51 +0800
From: kernel test robot <lkp@intel.com>
To: Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 piotr.kwapulinski@intel.com
Cc: oe-kbuild-all@lists.linux.dev, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, michal.swiatkowski@linux.intel.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Dheeraj Reddy Jonnalagadda <dheeraj.linuxdev@gmail.com>
Message-ID: <202501182225.DicoE2L2-lkp@intel.com>
References: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250115034117.172999-1-dheeraj.linuxdev@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737212788; x=1768748788;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jkbgZtrM2XmBN/IkJ+4GzldpC6tPh2ZxTAkwaMzPCUA=;
 b=d6rZSLz1YMb3vgVNcYpj8rg+51Z5FjdDqBvkeHZDV6pMKKI3LVG/50qe
 3wzYd9SeFF2qEo6dMshbW6eHBLucEryBBB1u62DGktpq/790BuI/tn5UX
 i4saTRoTBlGTvGtcv1tHEAm+qQHzupgTB5Qeb9dxyF1rM+FLJaVBWrwVq
 LFrh9GbsSA8HAYick9eHeQbpvWiER3IRD5J1t+0IWClNokU/L9K9lhT6G
 hQMUX+jOiKQx+Tx9Wl7ovhMYM0Xhh4mWM7ygc/ToA6obEs/jl/JvApvaT
 msLkRyRpNyaMKE0qBjovCellbjp4/axCii7vNQA+eT2F2hgCSvoBJICnB
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=d6rZSLz1
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ixgbe: Fix endian
 handling for ACI descriptor registers
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

Hi Dheeraj,

kernel test robot noticed the following build warnings:

[auto build test WARNING on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Dheeraj-Reddy-Jonnalagadda/ixgbe-Fix-endian-handling-for-ACI-descriptor-registers/20250115-114330
base:   net-next/main
patch link:    https://lore.kernel.org/r/20250115034117.172999-1-dheeraj.linuxdev%40gmail.com
patch subject: [PATCH v2 net-next] ixgbe: Fix endian handling for ACI descriptor registers
config: x86_64-randconfig-r133-20250118 (https://download.01.org/0day-ci/archive/20250118/202501182225.DicoE2L2-lkp@intel.com/config)
compiler: clang version 19.1.3 (https://github.com/llvm/llvm-project ab51eccf88f5321e7c60591c5546b254b6afab99)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20250118/202501182225.DicoE2L2-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202501182225.DicoE2L2-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:116:17: sparse: sparse: incorrect type in argument 3 (different base types) @@     expected unsigned int [usertype] value @@     got restricted __le32 [usertype] @@
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:116:17: sparse:     expected unsigned int [usertype] value
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:116:17: sparse:     got restricted __le32 [usertype]
>> drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:148:39: sparse: sparse: cast to restricted __le32
   drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c:156:39: sparse: sparse: cast to restricted __le32

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
    59					      struct ixgbe_aci_desc *desc,
    60					      void *buf, u16 buf_size)
    61	{
    62		u16 opcode, buf_tail_size = buf_size % 4;
    63		u32 *raw_desc = (u32 *)desc;
    64		u32 hicr, i, buf_tail = 0;
    65		bool valid_buf = false;
    66	
    67		hw->aci.last_status = IXGBE_ACI_RC_OK;
    68	
    69		/* It's necessary to check if mechanism is enabled */
    70		hicr = IXGBE_READ_REG(hw, IXGBE_PF_HICR);
    71	
    72		if (!(hicr & IXGBE_PF_HICR_EN))
    73			return -EIO;
    74	
    75		if (hicr & IXGBE_PF_HICR_C) {
    76			hw->aci.last_status = IXGBE_ACI_RC_EBUSY;
    77			return -EBUSY;
    78		}
    79	
    80		opcode = le16_to_cpu(desc->opcode);
    81	
    82		if (buf_size > IXGBE_ACI_MAX_BUFFER_SIZE)
    83			return -EINVAL;
    84	
    85		if (buf)
    86			desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_BUF);
    87	
    88		if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_BUF)) {
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
   101			if (((buf_size + 3) & ~0x3) > IXGBE_ACI_LG_BUF)
   102				desc->flags |= cpu_to_le16(IXGBE_ACI_FLAG_LB);
   103	
   104			desc->datalen = cpu_to_le16(buf_size);
   105	
   106			if (desc->flags & cpu_to_le16(IXGBE_ACI_FLAG_RD)) {
   107				for (i = 0; i < buf_size / 4; i++)
   108					IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i), ((u32 *)buf)[i]);
   109				if (buf_tail_size)
   110					IXGBE_WRITE_REG(hw, IXGBE_PF_HIBA(i), buf_tail);
   111			}
   112		}
   113	
   114		/* Descriptor is written to specific registers */
   115		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
 > 116			IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), cpu_to_le32(raw_desc[i]));
   117	
   118		/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
   119		 * PF_HICR_EV
   120		 */
   121		hicr = (IXGBE_READ_REG(hw, IXGBE_PF_HICR) | IXGBE_PF_HICR_C) &
   122		       ~(IXGBE_PF_HICR_SV | IXGBE_PF_HICR_EV);
   123		IXGBE_WRITE_REG(hw, IXGBE_PF_HICR, hicr);
   124	
   125	#define MAX_SLEEP_RESP_US 1000
   126	#define MAX_TMOUT_RESP_SYNC_US 100000000
   127	
   128		/* Wait for sync Admin Command response */
   129		read_poll_timeout(IXGBE_READ_REG, hicr,
   130				  (hicr & IXGBE_PF_HICR_SV) ||
   131				  !(hicr & IXGBE_PF_HICR_C),
   132				  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_SYNC_US, true, hw,
   133				  IXGBE_PF_HICR);
   134	
   135	#define MAX_TMOUT_RESP_ASYNC_US 150000000
   136	
   137		/* Wait for async Admin Command response */
   138		read_poll_timeout(IXGBE_READ_REG, hicr,
   139				  (hicr & IXGBE_PF_HICR_EV) ||
   140				  !(hicr & IXGBE_PF_HICR_C),
   141				  MAX_SLEEP_RESP_US, MAX_TMOUT_RESP_ASYNC_US, true, hw,
   142				  IXGBE_PF_HICR);
   143	
   144		/* Read sync Admin Command response */
   145		if ((hicr & IXGBE_PF_HICR_SV)) {
   146			for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
   147				raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA(i));
 > 148				raw_desc[i] = le32_to_cpu(raw_desc[i]);
   149			}
   150		}
   151	
   152		/* Read async Admin Command response */
   153		if ((hicr & IXGBE_PF_HICR_EV) && !(hicr & IXGBE_PF_HICR_C)) {
   154			for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
   155				raw_desc[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIDA_2(i));
   156				raw_desc[i] = le32_to_cpu(raw_desc[i]);
   157			}
   158		}
   159	
   160		/* Handle timeout and invalid state of HICR register */
   161		if (hicr & IXGBE_PF_HICR_C)
   162			return -ETIME;
   163	
   164		if (!(hicr & IXGBE_PF_HICR_SV) && !(hicr & IXGBE_PF_HICR_EV))
   165			return -EIO;
   166	
   167		/* For every command other than 0x0014 treat opcode mismatch
   168		 * as an error. Response to 0x0014 command read from HIDA_2
   169		 * is a descriptor of an event which is expected to contain
   170		 * different opcode than the command.
   171		 */
   172		if (desc->opcode != cpu_to_le16(opcode) &&
   173		    opcode != ixgbe_aci_opc_get_fw_event)
   174			return -EIO;
   175	
   176		if (desc->retval) {
   177			hw->aci.last_status = (enum ixgbe_aci_err)
   178				le16_to_cpu(desc->retval);
   179			return -EIO;
   180		}
   181	
   182		/* Write a response values to a buf */
   183		if (valid_buf) {
   184			for (i = 0; i < buf_size / 4; i++)
   185				((u32 *)buf)[i] = IXGBE_READ_REG(hw, IXGBE_PF_HIBA(i));
   186			if (buf_tail_size) {
   187				buf_tail = IXGBE_READ_REG(hw, IXGBE_PF_HIBA(i));
   188				memcpy(buf + buf_size - buf_tail_size, &buf_tail,
   189				       buf_tail_size);
   190			}
   191		}
   192	
   193		return 0;
   194	}
   195	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
