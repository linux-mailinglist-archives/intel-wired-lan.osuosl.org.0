Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D214FFB6B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Apr 2022 18:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD78561128;
	Wed, 13 Apr 2022 16:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ySjf0SrfCE7k; Wed, 13 Apr 2022 16:36:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F74A6111C;
	Wed, 13 Apr 2022 16:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7B691BF9A4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 16:36:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1E5F409A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 16:36:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7HKfCjPTAES for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Apr 2022 16:36:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F081408C6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Apr 2022 16:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649867790; x=1681403790;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=ViHeCkeKpNZGlo114iscAHmNaZFgMUpDP6ZO2tliJZQ=;
 b=DC8hAG9EQxIE9DXw/F/7gMa3nW/jRjE5SwC0KrmKUlAhO40kgoETEXCh
 POpbvkJ9vUTNhNgNBYlo4/AY4LyM1QDY0xrPJdKKoDfGLsVwtVgmU6Bzi
 B/WEKQ3uC0Swrioi9nFbxwQFjZsrvQd7tVWTpz5zQMfFb0ZnSS66hbvg0
 qHPcYGn0csuXOD5DlftZHajCJOS47Q+Of0f0jiOsxEtnHP68aNHlvmCQy
 4AafZWHpdxb8WNXU6aLXGozEWz/xps6bcau4mNnnStPQfrltYQGe6F7tm
 vn6jNa0ZUTdrhoRadbVIC2/sxA5+rNYsfFJ7d7AEq+NDDUuBoD+wvu3gy A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="349150119"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="349150119"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 09:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645235364"
Received: from lkp-server01.sh.intel.com (HELO 3abc53900bec) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Apr 2022 09:36:28 -0700
Received: from kbuild by 3abc53900bec with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nefyl-0000SQ-L5;
 Wed, 13 Apr 2022 16:36:27 +0000
Date: Thu, 14 Apr 2022 00:35:51 +0800
From: kernel test robot <lkp@intel.com>
To: Joe Damato <jdamato@fastly.com>
Message-ID: <202204140015.MRcE3hbT-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 235/256]
 drivers/net/ethernet/intel/ice/ice_txrx.c:1971:16: error: redeclaration of
 'protocol' with no linkage
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
Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   faadd15618a12d7b11208f11c54d6ac0f2776486
commit: 5d4c82c60dd05a844ff582c2c6d4e8c3c3020ebc [235/256] ice: Add mpls+tso support
config: powerpc-buildonly-randconfig-r003-20220413 (https://download.01.org/0day-ci/archive/20220414/202204140015.MRcE3hbT-lkp@intel.com/config)
compiler: powerpc-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?id=5d4c82c60dd05a844ff582c2c6d4e8c3c3020ebc
        git remote add tnguy-next-queue https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
        git fetch --no-tags tnguy-next-queue dev-queue
        git checkout 5d4c82c60dd05a844ff582c2c6d4e8c3c3020ebc
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_txrx.c: In function 'ice_tso':
>> drivers/net/ethernet/intel/ice/ice_txrx.c:1971:16: error: redeclaration of 'protocol' with no linkage
    1971 |         __be16 protocol;
         |                ^~~~~~~~
   drivers/net/ethernet/intel/ice/ice_txrx.c:1967:16: note: previous declaration of 'protocol' with type '__be16' {aka 'short unsigned int'}
    1967 |         __be16 protocol;
         |                ^~~~~~~~

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for HOTPLUG_CPU
   Depends on SMP && (PPC_PSERIES || PPC_PMAC || PPC_POWERNV || FSL_SOC_BOOKE
   Selected by
   - PM_SLEEP_SMP && SMP && (ARCH_SUSPEND_POSSIBLE || ARCH_HIBERNATION_POSSIBLE && PM_SLEEP


vim +/protocol +1971 drivers/net/ethernet/intel/ice/ice_txrx.c

  1944	
  1945	/**
  1946	 * ice_tso - computes mss and TSO length to prepare for TSO
  1947	 * @first: pointer to struct ice_tx_buf
  1948	 * @off: pointer to struct that holds offload parameters
  1949	 *
  1950	 * Returns 0 or error (negative) if TSO can't happen, 1 otherwise.
  1951	 */
  1952	static
  1953	int ice_tso(struct ice_tx_buf *first, struct ice_tx_offload_params *off)
  1954	{
  1955		struct sk_buff *skb = first->skb;
  1956		union {
  1957			struct iphdr *v4;
  1958			struct ipv6hdr *v6;
  1959			unsigned char *hdr;
  1960		} ip;
  1961		union {
  1962			struct tcphdr *tcp;
  1963			struct udphdr *udp;
  1964			unsigned char *hdr;
  1965		} l4;
  1966		u64 cd_mss, cd_tso_len;
  1967		__be16 protocol;
  1968		u32 paylen;
  1969		u8 l4_start;
  1970		int err;
> 1971		__be16 protocol;
  1972	
  1973		if (skb->ip_summed != CHECKSUM_PARTIAL)
  1974			return 0;
  1975	
  1976		if (!skb_is_gso(skb))
  1977			return 0;
  1978	
  1979		err = skb_cow_head(skb, 0);
  1980		if (err < 0)
  1981			return err;
  1982	
  1983		/* cppcheck-suppress unreadVariable */
  1984		protocol = vlan_get_protocol(skb);
  1985	
  1986		if (eth_p_mpls(protocol))
  1987			ip.hdr = skb_inner_network_header(skb);
  1988		else
  1989			ip.hdr = skb_network_header(skb);
  1990		l4.hdr = skb_checksum_start(skb);
  1991	
  1992		/* initialize outer IP header fields */
  1993		if (ip.v4->version == 4) {
  1994			ip.v4->tot_len = 0;
  1995			ip.v4->check = 0;
  1996		} else {
  1997			ip.v6->payload_len = 0;
  1998		}
  1999	
  2000		if (skb_shinfo(skb)->gso_type & (SKB_GSO_GRE |
  2001						 SKB_GSO_GRE_CSUM |
  2002						 SKB_GSO_IPXIP4 |
  2003						 SKB_GSO_IPXIP6 |
  2004						 SKB_GSO_UDP_TUNNEL |
  2005						 SKB_GSO_UDP_TUNNEL_CSUM)) {
  2006			if (!(skb_shinfo(skb)->gso_type & SKB_GSO_PARTIAL) &&
  2007			    (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_TUNNEL_CSUM)) {
  2008				l4.udp->len = 0;
  2009	
  2010				/* determine offset of outer transport header */
  2011				l4_start = (u8)(l4.hdr - skb->data);
  2012	
  2013				/* remove payload length from outer checksum */
  2014				paylen = skb->len - l4_start;
  2015				csum_replace_by_diff(&l4.udp->check,
  2016						     (__force __wsum)htonl(paylen));
  2017			}
  2018	
  2019			/* reset pointers to inner headers */
  2020	
  2021			/* cppcheck-suppress unreadVariable */
  2022			ip.hdr = skb_inner_network_header(skb);
  2023			l4.hdr = skb_inner_transport_header(skb);
  2024	
  2025			/* initialize inner IP header fields */
  2026			if (ip.v4->version == 4) {
  2027				ip.v4->tot_len = 0;
  2028				ip.v4->check = 0;
  2029			} else {
  2030				ip.v6->payload_len = 0;
  2031			}
  2032		}
  2033	
  2034		/* determine offset of transport header */
  2035		l4_start = (u8)(l4.hdr - skb->data);
  2036	
  2037		/* remove payload length from checksum */
  2038		paylen = skb->len - l4_start;
  2039	
  2040		if (skb_shinfo(skb)->gso_type & SKB_GSO_UDP_L4) {
  2041			csum_replace_by_diff(&l4.udp->check,
  2042					     (__force __wsum)htonl(paylen));
  2043			/* compute length of UDP segmentation header */
  2044			off->header_len = (u8)sizeof(l4.udp) + l4_start;
  2045		} else {
  2046			csum_replace_by_diff(&l4.tcp->check,
  2047					     (__force __wsum)htonl(paylen));
  2048			/* compute length of TCP segmentation header */
  2049			off->header_len = (u8)((l4.tcp->doff * 4) + l4_start);
  2050		}
  2051	
  2052		/* update gso_segs and bytecount */
  2053		first->gso_segs = skb_shinfo(skb)->gso_segs;
  2054		first->bytecount += (first->gso_segs - 1) * off->header_len;
  2055	
  2056		cd_tso_len = skb->len - off->header_len;
  2057		cd_mss = skb_shinfo(skb)->gso_size;
  2058	
  2059		/* record cdesc_qw1 with TSO parameters */
  2060		off->cd_qw1 |= (u64)(ICE_TX_DESC_DTYPE_CTX |
  2061				     (ICE_TX_CTX_DESC_TSO << ICE_TXD_CTX_QW1_CMD_S) |
  2062				     (cd_tso_len << ICE_TXD_CTX_QW1_TSO_LEN_S) |
  2063				     (cd_mss << ICE_TXD_CTX_QW1_MSS_S));
  2064		first->tx_flags |= ICE_TX_FLAGS_TSO;
  2065		return 1;
  2066	}
  2067	

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
