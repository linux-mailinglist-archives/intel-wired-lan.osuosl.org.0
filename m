Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C34888CF8D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 22:02:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E5EF40891;
	Tue, 26 Mar 2024 21:02:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SOwQvvWCU6aR; Tue, 26 Mar 2024 21:02:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2279C40888
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711486935;
	bh=on8CHeRp4fdkGGcn6tnisNCHq4WrCd/5JnwlC1Cxm2s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mZ6ELdjfiWg/UIz+nN71PUhnqQk/GZAKU+If7bMUYTDkDl6aAGqZ6IZdFY6PVAgP3
	 5iNuvR9AM74rENIJlAuN/COIy9smNfyefq7bM5j6vHScwMsDzQEKC9FXlSfG5Ijb8x
	 J8Ua9oYlHqazxe9f+qONJ9Qx4sq8n6czBt8DzkzMwMFmJW2qE4OXvMYrl1sGitwyVi
	 xuM1kl0WoM8i9lWHSa5Xlq9TB6JfPCt13WRRAX+7G8LYAm1kXtDqlCxX9fueEwPMRT
	 dysv2Ut8/BMfvOaN6d06ED+WRNvoo0hI/+pdVub/IOrOoqx4/YXWB/6i4FsT3Or+qz
	 KFz9Sp2vg7yxA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2279C40888;
	Tue, 26 Mar 2024 21:02:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F32D31BF40E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 21:02:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DEFDF4053D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 21:02:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uoVFnR3Ajqav for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 21:02:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A8077400FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8077400FD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8077400FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 21:02:10 +0000 (UTC)
X-CSE-ConnectionGUID: cHiJVRifQtuHR26KBh0xMw==
X-CSE-MsgGUID: rrEt57gPTPizfvJcFeDQFg==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="6671374"
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; 
   d="scan'208";a="6671374"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 14:02:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,157,1708416000"; d="scan'208";a="47262051"
Received: from lkp-server01.sh.intel.com (HELO be39aa325d23) ([10.239.97.150])
 by fmviesa001.fm.intel.com with ESMTP; 26 Mar 2024 14:02:01 -0700
Received: from kbuild by be39aa325d23 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rpDvi-0000PA-2H;
 Tue, 26 Mar 2024 21:01:58 +0000
Date: Wed, 27 Mar 2024 05:01:55 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202403270404.dmqDS0ic-lkp@intel.com>
References: <20240326115116.10040-10-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240326115116.10040-10-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711486931; x=1743022931;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jbbCJELoEAQqqkUBdoSUDMfhU+fP4buuslKhPG43iwc=;
 b=WwOCK0ENjAyJB5gvQRhRwxFqo8bYSQRc5Q7LO9t4hZRX45o1TYUGX7r/
 /7ePIlY2ynJ0Qn+lYTKtvHL0iK+1EjJxThl6oQZYWZ/CU+Vvv90f6LHnB
 Vd0T2TfRLr1xzIMlnHmoQ+SkaXka7CpEtksoIkNRYvkbAcIygMoCLaxjy
 0+2uF3ikkRfU6HFXxAckjWaFicOaYanwQ5ycWMTgX6lrMjGxqPEceu1RV
 Th4AG05okFFooiVu38cwt2Q8u2G44xkDu0PpMvAlVyw7uIDfdMvz9EPQ1
 kSrw3/5jNPXqI5l45P1Gqcugk2IbSB7QLFj9AeoI0hYTfsSnzhNK2msMt
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WwOCK0EN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 09/12] iavf: refactor
 iavf_clean_rx_irq to support legacy and flex descriptors
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>, oe-kbuild-all@lists.linux.dev
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Mateusz,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Mateusz-Polchlopek/virtchnl-add-support-for-enabling-PTP-on-iAVF/20240326-200321
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240326115116.10040-10-mateusz.polchlopek%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v1 09/12] iavf: refactor iavf_clean_rx_irq to support legacy and flex descriptors
config: alpha-allyesconfig (https://download.01.org/0day-ci/archive/20240327/202403270404.dmqDS0ic-lkp@intel.com/config)
compiler: alpha-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240327/202403270404.dmqDS0ic-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403270404.dmqDS0ic-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/iavf/iavf_txrx.c: In function 'iavf_legacy_rx_csum':
>> drivers/net/ethernet/intel/iavf/iavf_txrx.c:1081:23: warning: variable 'rx_status' set but not used [-Wunused-but-set-variable]
    1081 |         u32 rx_error, rx_status;
         |                       ^~~~~~~~~
   drivers/net/ethernet/intel/iavf/iavf_txrx.c: In function 'iavf_flex_rx_csum':
>> drivers/net/ethernet/intel/iavf/iavf_txrx.c:1118:25: warning: variable 'rx_status1' set but not used [-Wunused-but-set-variable]
    1118 |         u16 rx_status0, rx_status1, ptype;
         |                         ^~~~~~~~~~


vim +/rx_status +1081 drivers/net/ethernet/intel/iavf/iavf_txrx.c

  1065	
  1066	/**
  1067	 * iavf_legacy_rx_csum - Indicate in skb if hw indicated a good cksum
  1068	 * @vsi: the VSI we care about
  1069	 * @skb: skb currently being received and modified
  1070	 * @rx_desc: the receive descriptor
  1071	 *
  1072	 * This function only operates on the VIRTCHNL_RXDID_1_32B_BASE legacy 32byte
  1073	 * descriptor writeback format.
  1074	 **/
  1075	static inline void iavf_legacy_rx_csum(struct iavf_vsi *vsi,
  1076					       struct sk_buff *skb,
  1077					       union iavf_rx_desc *rx_desc)
  1078	{
  1079		struct iavf_rx_csum_decoded csum_bits;
  1080		struct iavf_rx_ptype_decoded decoded;
> 1081		u32 rx_error, rx_status;
  1082		u64 qword;
  1083		u16 ptype;
  1084	
  1085		qword = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
  1086		ptype = FIELD_GET(IAVF_RXD_QW1_PTYPE_MASK, qword);
  1087		rx_error = FIELD_GET(IAVF_RXD_QW1_ERROR_MASK, qword);
  1088		rx_status = FIELD_GET(IAVF_RXD_QW1_STATUS_MASK, qword);
  1089		decoded = decode_rx_desc_ptype(ptype);
  1090	
  1091		csum_bits.ipe = FIELD_GET(IAVF_RX_DESC_ERROR_IPE_MASK, rx_error);
  1092		csum_bits.eipe = FIELD_GET(IAVF_RX_DESC_ERROR_EIPE_MASK, rx_error);
  1093		csum_bits.l4e = FIELD_GET(IAVF_RX_DESC_ERROR_L4E_MASK, rx_error);
  1094		csum_bits.pprs = FIELD_GET(IAVF_RX_DESC_ERROR_PPRS_MASK, rx_error);
  1095		csum_bits.l3l4p = FIELD_GET(IAVF_RX_DESC_STATUS_L3L4P_MASK, rx_error);
  1096		csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_DESC_STATUS_IPV6EXADD_MASK,
  1097						rx_error);
  1098		csum_bits.nat = 0;
  1099		csum_bits.eudpe = 0;
  1100	
  1101		iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
  1102	}
  1103	
  1104	/**
  1105	 * iavf_flex_rx_csum - Indicate in skb if hw indicated a good cksum
  1106	 * @vsi: the VSI we care about
  1107	 * @skb: skb currently being received and modified
  1108	 * @rx_desc: the receive descriptor
  1109	 *
  1110	 * This function only operates on the VIRTCHNL_RXDID_2_FLEX_SQ_NIC flexible
  1111	 * descriptor writeback format.
  1112	 **/
  1113	static inline void iavf_flex_rx_csum(struct iavf_vsi *vsi, struct sk_buff *skb,
  1114					     union iavf_rx_desc *rx_desc)
  1115	{
  1116		struct iavf_rx_csum_decoded csum_bits;
  1117		struct iavf_rx_ptype_decoded decoded;
> 1118		u16 rx_status0, rx_status1, ptype;
  1119	
  1120		rx_status0 = le16_to_cpu(rx_desc->flex_wb.status_error0);
  1121		rx_status1 = le16_to_cpu(rx_desc->flex_wb.status_error1);
  1122		ptype = le16_to_cpu(FIELD_GET(IAVF_RX_FLEX_DESC_PTYPE_M,
  1123					      rx_desc->flex_wb.ptype_flexi_flags0));
  1124		decoded = decode_rx_desc_ptype(ptype);
  1125	
  1126		csum_bits.ipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_IPE_M,
  1127					  rx_status0);
  1128		csum_bits.eipe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EIPE_M,
  1129					   rx_status0);
  1130		csum_bits.l4e = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_L4E_M,
  1131					  rx_status0);
  1132		csum_bits.eudpe = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_M,
  1133					    rx_status0);
  1134		csum_bits.l3l4p = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_L3L4P_M,
  1135					    rx_status0);
  1136		csum_bits.ipv6exadd = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS0_IPV6EXADD_M,
  1137						rx_status0);
  1138		csum_bits.nat = FIELD_GET(IAVF_RX_FLEX_DESC_STATUS1_NAT_M, rx_status0);
  1139		csum_bits.pprs = 0;
  1140	
  1141		iavf_rx_csum(vsi, skb, &decoded, &csum_bits);
  1142	}
  1143	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
