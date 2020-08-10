Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B4A240C2E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Aug 2020 19:41:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 344B920BF8;
	Mon, 10 Aug 2020 17:41:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GnqNItvPSIDm; Mon, 10 Aug 2020 17:41:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C2FC72152C;
	Mon, 10 Aug 2020 17:41:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 548DB1BF3BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 17:41:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4036288A01
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 17:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UEXep9xgROxE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Aug 2020 17:40:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6BDAE88A55
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Aug 2020 17:40:59 +0000 (UTC)
IronPort-SDR: EK86IYmWLhJCTAjZ1VBdHJ2Rfih89nNlBfQlovJTYA0oSrVIZovJryEE3UvtkU00Ld2YTjy+BB
 hzG5FarSvrJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9709"; a="133122113"
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; 
 d="gz'50?scan'50,208,50";a="133122113"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2020 10:40:58 -0700
IronPort-SDR: sCHHPrhploFPn3QQGHsQhGd1vjAxGaETcZHHPBmFo0juOhcGsWrlMgFeCwesooHqzK/ngWo8Qz
 wLSvkT4afJTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,458,1589266800"; 
 d="gz'50?scan'50,208,50";a="277344921"
Received: from lkp-server01.sh.intel.com (HELO 71729f5ca340) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 10 Aug 2020 10:40:56 -0700
Received: from kbuild by 71729f5ca340 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k5Bn5-000064-Cg; Mon, 10 Aug 2020 17:40:55 +0000
Date: Tue, 11 Aug 2020 01:39:57 +0800
From: kernel test robot <lkp@intel.com>
To: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Message-ID: <202008110155.7a7PDhNn%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [Intel-wired-lan] [jkirsher-next-queue:dev-queue 32/33]
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4117:50: sparse: sparse:
 incorrect type in initializer (different base types)
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, kbuild-all@lists.01.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   5cf0cbb14925b7131baa959b35a2267d6bbb6651
commit: f9f6d7ca51320f99e7d1c1b8facc5c129e9c413f [32/33] i40e: Add flow director support for IPv6
config: x86_64-randconfig-s022-20200810 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.2-141-g19506bc2-dirty
        git checkout f9f6d7ca51320f99e7d1c1b8facc5c129e9c413f
        # save the attached .config to linux build tree
        make W=1 C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4117:50: sparse: sparse: incorrect type in initializer (different base types) @@     expected restricted __be32 @@     got unsigned int @@
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4117:50: sparse:     expected restricted __be32
>> drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4117:50: sparse:     got unsigned int
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4117:62: sparse: sparse: incorrect type in initializer (different base types) @@     expected restricted __be32 @@     got unsigned int @@
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4117:62: sparse:     expected restricted __be32
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4117:62: sparse:     got unsigned int
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4118:17: sparse: sparse: incorrect type in initializer (different base types) @@     expected restricted __be32 @@     got unsigned int @@
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4118:17: sparse:     expected restricted __be32
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4118:17: sparse:     got unsigned int
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4118:29: sparse: sparse: incorrect type in initializer (different base types) @@     expected restricted __be32 @@     got unsigned int @@
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4118:29: sparse:     expected restricted __be32
   drivers/net/ethernet/intel/i40e/i40e_ethtool.c:4118:29: sparse:     got unsigned int

vim +4117 drivers/net/ethernet/intel/i40e/i40e_ethtool.c

  4087	
  4088	/**
  4089	 * i40e_check_fdir_input_set - Check that a given rx_flow_spec mask is valid
  4090	 * @vsi: pointer to the targeted VSI
  4091	 * @fsp: pointer to Rx flow specification
  4092	 * @userdef: userdefined data from flow specification
  4093	 *
  4094	 * Ensures that a given ethtool_rx_flow_spec has a valid mask. Some support
  4095	 * for partial matches exists with a few limitations. First, hardware only
  4096	 * supports masking by word boundary (2 bytes) and not per individual bit.
  4097	 * Second, hardware is limited to using one mask for a flow type and cannot
  4098	 * use a separate mask for each filter.
  4099	 *
  4100	 * To support these limitations, if we already have a configured filter for
  4101	 * the specified type, this function enforces that new filters of the type
  4102	 * match the configured input set. Otherwise, if we do not have a filter of
  4103	 * the specified type, we allow the input set to be updated to match the
  4104	 * desired filter.
  4105	 *
  4106	 * To help ensure that administrators understand why filters weren't displayed
  4107	 * as supported, we print a diagnostic message displaying how the input set
  4108	 * would change and warning to delete the preexisting filters if required.
  4109	 *
  4110	 * Returns 0 on successful input set match, and a negative return code on
  4111	 * failure.
  4112	 **/
  4113	static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
  4114					     struct ethtool_rx_flow_spec *fsp,
  4115					     struct i40e_rx_flow_userdef *userdef)
  4116	{
> 4117		static const __be32 ipv6_full_mask[4] = {0xffffffff, 0xffffffff,
  4118			0xffffffff, 0xffffffff};
  4119		struct ethtool_tcpip6_spec *tcp_ip6_spec;
  4120		struct ethtool_usrip6_spec *usr_ip6_spec;
  4121		struct ethtool_tcpip4_spec *tcp_ip4_spec;
  4122		struct ethtool_usrip4_spec *usr_ip4_spec;
  4123		struct i40e_pf *pf = vsi->back;
  4124		u64 current_mask, new_mask;
  4125		bool new_flex_offset = false;
  4126		bool flex_l3 = false;
  4127		u16 *fdir_filter_count;
  4128		u16 index, src_offset = 0;
  4129		u8 pit_index = 0;
  4130		int err;
  4131	
  4132		switch (fsp->flow_type & ~FLOW_EXT) {
  4133		case SCTP_V4_FLOW:
  4134			index = I40E_FILTER_PCTYPE_NONF_IPV4_SCTP;
  4135			fdir_filter_count = &pf->fd_sctp4_filter_cnt;
  4136			break;
  4137		case TCP_V4_FLOW:
  4138			index = I40E_FILTER_PCTYPE_NONF_IPV4_TCP;
  4139			fdir_filter_count = &pf->fd_tcp4_filter_cnt;
  4140			break;
  4141		case UDP_V4_FLOW:
  4142			index = I40E_FILTER_PCTYPE_NONF_IPV4_UDP;
  4143			fdir_filter_count = &pf->fd_udp4_filter_cnt;
  4144			break;
  4145		case SCTP_V6_FLOW:
  4146			index = I40E_FILTER_PCTYPE_NONF_IPV6_SCTP;
  4147			fdir_filter_count = &pf->fd_sctp6_filter_cnt;
  4148			break;
  4149		case TCP_V6_FLOW:
  4150			index = I40E_FILTER_PCTYPE_NONF_IPV6_TCP;
  4151			fdir_filter_count = &pf->fd_tcp6_filter_cnt;
  4152			break;
  4153		case UDP_V6_FLOW:
  4154			index = I40E_FILTER_PCTYPE_NONF_IPV6_UDP;
  4155			fdir_filter_count = &pf->fd_udp6_filter_cnt;
  4156			break;
  4157		case IP_USER_FLOW:
  4158			index = I40E_FILTER_PCTYPE_NONF_IPV4_OTHER;
  4159			fdir_filter_count = &pf->fd_ip4_filter_cnt;
  4160			flex_l3 = true;
  4161			break;
  4162		case IPV6_USER_FLOW:
  4163			index = I40E_FILTER_PCTYPE_NONF_IPV6_OTHER;
  4164			fdir_filter_count = &pf->fd_ip6_filter_cnt;
  4165			flex_l3 = true;
  4166			break;
  4167		default:
  4168			return -EOPNOTSUPP;
  4169		}
  4170	
  4171		/* Read the current input set from register memory. */
  4172		current_mask = i40e_read_fd_input_set(pf, index);
  4173		new_mask = current_mask;
  4174	
  4175		/* Determine, if any, the required changes to the input set in order
  4176		 * to support the provided mask.
  4177		 *
  4178		 * Hardware only supports masking at word (2 byte) granularity and does
  4179		 * not support full bitwise masking. This implementation simplifies
  4180		 * even further and only supports fully enabled or fully disabled
  4181		 * masks for each field, even though we could split the ip4src and
  4182		 * ip4dst fields.
  4183		 */
  4184		switch (fsp->flow_type & ~FLOW_EXT) {
  4185		case SCTP_V4_FLOW:
  4186			new_mask &= ~I40E_VERIFY_TAG_MASK;
  4187			fallthrough;
  4188		case TCP_V4_FLOW:
  4189		case UDP_V4_FLOW:
  4190			tcp_ip4_spec = &fsp->m_u.tcp_ip4_spec;
  4191	
  4192			/* IPv4 source address */
  4193			if (tcp_ip4_spec->ip4src == htonl(0xFFFFFFFF))
  4194				new_mask |= I40E_L3_SRC_MASK;
  4195			else if (!tcp_ip4_spec->ip4src)
  4196				new_mask &= ~I40E_L3_SRC_MASK;
  4197			else
  4198				return -EOPNOTSUPP;
  4199	
  4200			/* IPv4 destination address */
  4201			if (tcp_ip4_spec->ip4dst == htonl(0xFFFFFFFF))
  4202				new_mask |= I40E_L3_DST_MASK;
  4203			else if (!tcp_ip4_spec->ip4dst)
  4204				new_mask &= ~I40E_L3_DST_MASK;
  4205			else
  4206				return -EOPNOTSUPP;
  4207	
  4208			/* L4 source port */
  4209			if (tcp_ip4_spec->psrc == htons(0xFFFF))
  4210				new_mask |= I40E_L4_SRC_MASK;
  4211			else if (!tcp_ip4_spec->psrc)
  4212				new_mask &= ~I40E_L4_SRC_MASK;
  4213			else
  4214				return -EOPNOTSUPP;
  4215	
  4216			/* L4 destination port */
  4217			if (tcp_ip4_spec->pdst == htons(0xFFFF))
  4218				new_mask |= I40E_L4_DST_MASK;
  4219			else if (!tcp_ip4_spec->pdst)
  4220				new_mask &= ~I40E_L4_DST_MASK;
  4221			else
  4222				return -EOPNOTSUPP;
  4223	
  4224			/* Filtering on Type of Service is not supported. */
  4225			if (tcp_ip4_spec->tos)
  4226				return -EOPNOTSUPP;
  4227	
  4228			break;
  4229		case SCTP_V6_FLOW:
  4230			new_mask &= ~I40E_VERIFY_TAG_MASK;
  4231			fallthrough;
  4232		case TCP_V6_FLOW:
  4233		case UDP_V6_FLOW:
  4234			tcp_ip6_spec = &fsp->m_u.tcp_ip6_spec;
  4235	
  4236			/* Check if user provided IPv6 source address. */
  4237			if (ipv6_addr_equal((struct in6_addr *)&tcp_ip6_spec->ip6src,
  4238					    (struct in6_addr *)&ipv6_full_mask))
  4239				new_mask |= I40E_L3_V6_SRC_MASK;
  4240			else if (ipv6_addr_any((struct in6_addr *)
  4241					       &tcp_ip6_spec->ip6src))
  4242				new_mask &= ~I40E_L3_V6_SRC_MASK;
  4243			else
  4244				return -EOPNOTSUPP;
  4245	
  4246			/* Check if user provided destination address. */
  4247			if (ipv6_addr_equal((struct in6_addr *)&tcp_ip6_spec->ip6dst,
  4248					    (struct in6_addr *)&ipv6_full_mask))
  4249				new_mask |= I40E_L3_V6_DST_MASK;
  4250			else if (ipv6_addr_any((struct in6_addr *)
  4251					       &tcp_ip6_spec->ip6src))
  4252				new_mask &= ~I40E_L3_V6_DST_MASK;
  4253			else
  4254				return -EOPNOTSUPP;
  4255	
  4256			/* L4 source port */
  4257			if (tcp_ip6_spec->psrc == htons(0xFFFF))
  4258				new_mask |= I40E_L4_SRC_MASK;
  4259			else if (!tcp_ip6_spec->psrc)
  4260				new_mask &= ~I40E_L4_SRC_MASK;
  4261			else
  4262				return -EOPNOTSUPP;
  4263	
  4264			/* L4 destination port */
  4265			if (tcp_ip6_spec->pdst == htons(0xFFFF))
  4266				new_mask |= I40E_L4_DST_MASK;
  4267			else if (!tcp_ip6_spec->pdst)
  4268				new_mask &= ~I40E_L4_DST_MASK;
  4269			else
  4270				return -EOPNOTSUPP;
  4271	
  4272			/* Filtering on Traffic Classes is not supported. */
  4273			if (tcp_ip6_spec->tclass)
  4274				return -EOPNOTSUPP;
  4275			break;
  4276		case IP_USER_FLOW:
  4277			usr_ip4_spec = &fsp->m_u.usr_ip4_spec;
  4278	
  4279			/* IPv4 source address */
  4280			if (usr_ip4_spec->ip4src == htonl(0xFFFFFFFF))
  4281				new_mask |= I40E_L3_SRC_MASK;
  4282			else if (!usr_ip4_spec->ip4src)
  4283				new_mask &= ~I40E_L3_SRC_MASK;
  4284			else
  4285				return -EOPNOTSUPP;
  4286	
  4287			/* IPv4 destination address */
  4288			if (usr_ip4_spec->ip4dst == htonl(0xFFFFFFFF))
  4289				new_mask |= I40E_L3_DST_MASK;
  4290			else if (!usr_ip4_spec->ip4dst)
  4291				new_mask &= ~I40E_L3_DST_MASK;
  4292			else
  4293				return -EOPNOTSUPP;
  4294	
  4295			/* First 4 bytes of L4 header */
  4296			if (usr_ip4_spec->l4_4_bytes == htonl(0xFFFFFFFF))
  4297				new_mask |= I40E_L4_SRC_MASK | I40E_L4_DST_MASK;
  4298			else if (!usr_ip4_spec->l4_4_bytes)
  4299				new_mask &= ~(I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
  4300			else
  4301				return -EOPNOTSUPP;
  4302	
  4303			/* Filtering on Type of Service is not supported. */
  4304			if (usr_ip4_spec->tos)
  4305				return -EOPNOTSUPP;
  4306	
  4307			/* Filtering on IP version is not supported */
  4308			if (usr_ip4_spec->ip_ver)
  4309				return -EINVAL;
  4310	
  4311			/* Filtering on L4 protocol is not supported */
  4312			if (usr_ip4_spec->proto)
  4313				return -EINVAL;
  4314	
  4315			break;
  4316		case IPV6_USER_FLOW:
  4317			usr_ip6_spec = &fsp->m_u.usr_ip6_spec;
  4318	
  4319			/* Check if user provided IPv6 source address. */
  4320			if (ipv6_addr_equal((struct in6_addr *)&usr_ip6_spec->ip6src,
  4321					    (struct in6_addr *)&ipv6_full_mask))
  4322				new_mask |= I40E_L3_V6_SRC_MASK;
  4323			else if (ipv6_addr_any((struct in6_addr *)
  4324					       &usr_ip6_spec->ip6src))
  4325				new_mask &= ~I40E_L3_V6_SRC_MASK;
  4326			else
  4327				return -EOPNOTSUPP;
  4328	
  4329			/* Check if user provided destination address. */
  4330			if (ipv6_addr_equal((struct in6_addr *)&usr_ip6_spec->ip6dst,
  4331					    (struct in6_addr *)&ipv6_full_mask))
  4332				new_mask |= I40E_L3_V6_DST_MASK;
  4333			else if (ipv6_addr_any((struct in6_addr *)
  4334					       &usr_ip6_spec->ip6src))
  4335				new_mask &= ~I40E_L3_V6_DST_MASK;
  4336			else
  4337				return -EOPNOTSUPP;
  4338	
  4339			if (usr_ip6_spec->l4_4_bytes == htonl(0xFFFFFFFF))
  4340				new_mask |= I40E_L4_SRC_MASK | I40E_L4_DST_MASK;
  4341			else if (!usr_ip6_spec->l4_4_bytes)
  4342				new_mask &= ~(I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
  4343			else
  4344				return -EOPNOTSUPP;
  4345	
  4346			/* Filtering on Traffic class is not supported. */
  4347			if (usr_ip6_spec->tclass)
  4348				return -EOPNOTSUPP;
  4349	
  4350			/* Filtering on L4 protocol is not supported */
  4351			if (usr_ip6_spec->l4_proto)
  4352				return -EINVAL;
  4353	
  4354			break;
  4355		default:
  4356			return -EOPNOTSUPP;
  4357		}
  4358	
  4359		/* First, clear all flexible filter entries */
  4360		new_mask &= ~I40E_FLEX_INPUT_MASK;
  4361	
  4362		/* If we have a flexible filter, try to add this offset to the correct
  4363		 * flexible filter PIT list. Once finished, we can update the mask.
  4364		 * If the src_offset changed, we will get a new mask value which will
  4365		 * trigger an input set change.
  4366		 */
  4367		if (userdef->flex_filter) {
  4368			struct i40e_flex_pit *l3_flex_pit = NULL, *flex_pit = NULL;
  4369	
  4370			/* Flexible offset must be even, since the flexible payload
  4371			 * must be aligned on 2-byte boundary.
  4372			 */
  4373			if (userdef->flex_offset & 0x1) {
  4374				dev_warn(&pf->pdev->dev,
  4375					 "Flexible data offset must be 2-byte aligned\n");
  4376				return -EINVAL;
  4377			}
  4378	
  4379			src_offset = userdef->flex_offset >> 1;
  4380	
  4381			/* FLX_PIT source offset value is only so large */
  4382			if (src_offset > I40E_MAX_FLEX_SRC_OFFSET) {
  4383				dev_warn(&pf->pdev->dev,
  4384					 "Flexible data must reside within first 64 bytes of the packet payload\n");
  4385				return -EINVAL;
  4386			}
  4387	
  4388			/* See if this offset has already been programmed. If we get
  4389			 * an ERR_PTR, then the filter is not safe to add. Otherwise,
  4390			 * if we get a NULL pointer, this means we will need to add
  4391			 * the offset.
  4392			 */
  4393			flex_pit = i40e_find_flex_offset(&pf->l4_flex_pit_list,
  4394							 src_offset);
  4395			if (IS_ERR(flex_pit))
  4396				return PTR_ERR(flex_pit);
  4397	
  4398			/* IP_USER_FLOW filters match both L4 (ICMP) and L3 (unknown)
  4399			 * packet types, and thus we need to program both L3 and L4
  4400			 * flexible values. These must have identical flexible index,
  4401			 * as otherwise we can't correctly program the input set. So
  4402			 * we'll find both an L3 and L4 index and make sure they are
  4403			 * the same.
  4404			 */
  4405			if (flex_l3) {
  4406				l3_flex_pit =
  4407					i40e_find_flex_offset(&pf->l3_flex_pit_list,
  4408							      src_offset);
  4409				if (IS_ERR(l3_flex_pit))
  4410					return PTR_ERR(l3_flex_pit);
  4411	
  4412				if (flex_pit) {
  4413					/* If we already had a matching L4 entry, we
  4414					 * need to make sure that the L3 entry we
  4415					 * obtained uses the same index.
  4416					 */
  4417					if (l3_flex_pit) {
  4418						if (l3_flex_pit->pit_index !=
  4419						    flex_pit->pit_index) {
  4420							return -EINVAL;
  4421						}
  4422					} else {
  4423						new_flex_offset = true;
  4424					}
  4425				} else {
  4426					flex_pit = l3_flex_pit;
  4427				}
  4428			}
  4429	
  4430			/* If we didn't find an existing flex offset, we need to
  4431			 * program a new one. However, we don't immediately program it
  4432			 * here because we will wait to program until after we check
  4433			 * that it is safe to change the input set.
  4434			 */
  4435			if (!flex_pit) {
  4436				new_flex_offset = true;
  4437				pit_index = i40e_unused_pit_index(pf);
  4438			} else {
  4439				pit_index = flex_pit->pit_index;
  4440			}
  4441	
  4442			/* Update the mask with the new offset */
  4443			new_mask |= i40e_pit_index_to_mask(pit_index);
  4444		}
  4445	
  4446		/* If the mask and flexible filter offsets for this filter match the
  4447		 * currently programmed values we don't need any input set change, so
  4448		 * this filter is safe to install.
  4449		 */
  4450		if (new_mask == current_mask && !new_flex_offset)
  4451			return 0;
  4452	
  4453		netif_info(pf, drv, vsi->netdev, "Input set change requested for %s flows:\n",
  4454			   i40e_flow_str(fsp));
  4455		i40e_print_input_set(vsi, current_mask, new_mask);
  4456		if (new_flex_offset) {
  4457			netif_info(pf, drv, vsi->netdev, "FLEX index %d: Offset -> %d",
  4458				   pit_index, src_offset);
  4459		}
  4460	
  4461		/* Hardware input sets are global across multiple ports, so even the
  4462		 * main port cannot change them when in MFP mode as this would impact
  4463		 * any filters on the other ports.
  4464		 */
  4465		if (pf->flags & I40E_FLAG_MFP_ENABLED) {
  4466			netif_err(pf, drv, vsi->netdev, "Cannot change Flow Director input sets while MFP is enabled\n");
  4467			return -EOPNOTSUPP;
  4468		}
  4469	
  4470		/* This filter requires us to update the input set. However, hardware
  4471		 * only supports one input set per flow type, and does not support
  4472		 * separate masks for each filter. This means that we can only support
  4473		 * a single mask for all filters of a specific type.
  4474		 *
  4475		 * If we have preexisting filters, they obviously depend on the
  4476		 * current programmed input set. Display a diagnostic message in this
  4477		 * case explaining why the filter could not be accepted.
  4478		 */
  4479		if (*fdir_filter_count) {
  4480			netif_err(pf, drv, vsi->netdev, "Cannot change input set for %s flows until %d preexisting filters are removed\n",
  4481				  i40e_flow_str(fsp),
  4482				  *fdir_filter_count);
  4483			return -EOPNOTSUPP;
  4484		}
  4485	
  4486		i40e_write_fd_input_set(pf, index, new_mask);
  4487	
  4488		/* IP_USER_FLOW filters match both IPv4/Other and IPv4/Fragmented
  4489		 * frames. If we're programming the input set for IPv4/Other, we also
  4490		 * need to program the IPv4/Fragmented input set. Since we don't have
  4491		 * separate support, we'll always assume and enforce that the two flow
  4492		 * types must have matching input sets.
  4493		 */
  4494		if (index == I40E_FILTER_PCTYPE_NONF_IPV4_OTHER)
  4495			i40e_write_fd_input_set(pf, I40E_FILTER_PCTYPE_FRAG_IPV4,
  4496						new_mask);
  4497	
  4498		/* Add the new offset and update table, if necessary */
  4499		if (new_flex_offset) {
  4500			err = i40e_add_flex_offset(&pf->l4_flex_pit_list, src_offset,
  4501						   pit_index);
  4502			if (err)
  4503				return err;
  4504	
  4505			if (flex_l3) {
  4506				err = i40e_add_flex_offset(&pf->l3_flex_pit_list,
  4507							   src_offset,
  4508							   pit_index);
  4509				if (err)
  4510					return err;
  4511			}
  4512	
  4513			i40e_reprogram_flex_pit(pf);
  4514		}
  4515	
  4516		return 0;
  4517	}
  4518	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--ibTvN161/egqYuK8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ibTvN161/egqYuK8
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--ibTvN161/egqYuK8--
