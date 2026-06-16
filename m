Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pVhBOL+vMWqgpAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 22:19:11 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 567ED695284
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jun 2026 22:19:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=a+GM5Ly2;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7FDB607C2;
	Tue, 16 Jun 2026 20:19:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E2n1wuGFuxSV; Tue, 16 Jun 2026 20:19:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04AA9607C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781641149;
	bh=qZa6AfVKHtbfltiGrhcWxUQMn0L7nBRdZJrQymbZF38=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=a+GM5Ly2ZDc8cXSfowBSLNQJrrE+Dg4fWjFE+7yoi9NOAY24UhhmzvWTvYbsGGsn1
	 G3322uo5sfxeETtU5PINf6OvAwElLCXeLdtBqUnJlB5h7KwccUjHoH+jLMaWauIAt9
	 C09kefzT3u1+4fyNB4gQCJrk6RnDxCJH5hIlTPI0R1dLdpCRfWqtPQ/c/1hxHQFDaq
	 WnY/jXFrLbBvCq99myqcTe7uxqR1rhqLl7aJCZHyrfwJB/hAGg048Qr6n8oPth6iwP
	 71h4CurEUQ0DmyL+017x4JmEEcUYnRdraoFE4RiWRUBKhekpXLy+VgEaLqMSxOZb1h
	 J2Yh8C3d0isBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04AA9607C8;
	Tue, 16 Jun 2026 20:19:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8228C230
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:19:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 687526078A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:19:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HJkFRAPJ4e4X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 20:19:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BC1626063E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC1626063E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BC1626063E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 20:19:04 +0000 (UTC)
X-CSE-ConnectionGUID: tOPub66mT9+WY9mGNXiorA==
X-CSE-MsgGUID: D5l9F0VnQoqJo7G546dksQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="92744729"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="92744729"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:19:04 -0700
X-CSE-ConnectionGUID: zTrHQPL/TL2Y9+7eSsJv5A==
X-CSE-MsgGUID: GQLbJOLPQc6kdvUO4GXLtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271945306"
Received: from igk-lkp-server01.igk.intel.com (HELO 892db79562d4)
 ([10.211.93.152])
 by fmviesa001.fm.intel.com with ESMTP; 16 Jun 2026 13:19:02 -0700
Received: from kbuild by 892db79562d4 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1wZaFQ-000000005B3-12Qh;
 Tue, 16 Jun 2026 20:19:00 +0000
Date: Tue, 16 Jun 2026 22:18:27 +0200
From: kernel test robot <lkp@intel.com>
To: Robert Malz <robert.malz@canonical.com>, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com
Cc: oe-kbuild-all@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <202606162237.EIrFZKip-lkp@intel.com>
References: <20260616104521.1545053-1-robert.malz@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260616104521.1545053-1-robert.malz@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781641145; x=1813177145;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ZQumMHxrTNTS76WJKpYqSc08gwtx7rqu3YrU8AEhN7U=;
 b=ZOJpO4kb4R/5D9zlaKhjV/nzxIvyrhabb+k9Sry6pL2Lvqknl6EE5eLU
 /V0nqBBUicpAqS2qhli4tY4NBi0rpvpXu5OYJ9G24kHvz4JsQe05aGGj4
 9PwvFBUpCPgzshxn2ZzjUKZ+4DDhq+MtmRak1FvsIR66NZs8lKdsfWZUr
 PFxsjJcyh3YUTCtAlYAppSsfLVwcUscu3c3OiLbFxeBv6HasqdR65qkv8
 H7N/jJpf7N4mRj6Q340eSZfgzQI9eSea4CAhZoUxHVmeIacNn3D5+Nav7
 M9VbNHdvA0UdURozA1nd3gucW4jbISMQDX/uJtbocss9lKutbwHD3oWP9
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZOJpO4kb
Subject: Re: [Intel-wired-lan] [PATCH] ice: retry reading NVM if admin queue
 returns EBUSY
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:robert.malz@canonical.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:oe-kbuild-all@lists.linux.dev,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,intel.com:email,intel.com:mid,intel.com:from_mime,01.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 567ED695284

Hi Robert,

kernel test robot noticed the following build errors:

[auto build test ERROR on tnguy-next-queue/dev-queue]
[also build test ERROR on tnguy-net-queue/dev-queue linus/master v7.1 next-20260616]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Robert-Malz/ice-retry-reading-NVM-if-admin-queue-returns-EBUSY/20260616-185349
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20260616104521.1545053-1-robert.malz%40canonical.com
patch subject: [PATCH] ice: retry reading NVM if admin queue returns EBUSY
config: x86_64-rhel-9.4 (https://download.01.org/0day-ci/archive/20260616/202606162237.EIrFZKip-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260616/202606162237.EIrFZKip-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202606162237.EIrFZKip-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/ice_nvm.c: In function 'ice_read_flat_nvm':
>> drivers/net/ethernet/intel/ice/ice_nvm.c:101:58: error: 'ICE_AQ_RC_EBUSY' undeclared (first use in this function); did you mean 'LIBIE_AQ_RC_EBUSY'?
     101 |                         if (hw->adminq.sq_last_status != ICE_AQ_RC_EBUSY ||
         |                                                          ^~~~~~~~~~~~~~~
         |                                                          LIBIE_AQ_RC_EBUSY
   drivers/net/ethernet/intel/ice/ice_nvm.c:101:58: note: each undeclared identifier is reported only once for each function it appears in


vim +101 drivers/net/ethernet/intel/ice/ice_nvm.c

    48	
    49	/**
    50	 * ice_read_flat_nvm - Read portion of NVM by flat offset
    51	 * @hw: pointer to the HW struct
    52	 * @offset: offset from beginning of NVM
    53	 * @length: (in) number of bytes to read; (out) number of bytes actually read
    54	 * @data: buffer to return data in (sized to fit the specified length)
    55	 * @read_shadow_ram: if true, read from shadow RAM instead of NVM
    56	 *
    57	 * Reads a portion of the NVM, as a flat memory space. This function correctly
    58	 * breaks read requests across Shadow RAM sectors and ensures that no single
    59	 * read request exceeds the maximum 4KB read for a single AdminQ command.
    60	 *
    61	 * Returns a status code on failure. Note that the data pointer may be
    62	 * partially updated if some reads succeed before a failure.
    63	 */
    64	int
    65	ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
    66			  bool read_shadow_ram)
    67	{
    68		u32 inlen = *length;
    69		u32 bytes_read = 0;
    70		int retry_cnt = 0;
    71		bool last_cmd;
    72		int status;
    73	
    74		*length = 0;
    75	
    76		/* Verify the length of the read if this is for the Shadow RAM */
    77		if (read_shadow_ram && ((offset + inlen) > (hw->flash.sr_words * 2u))) {
    78			ice_debug(hw, ICE_DBG_NVM, "NVM error: requested offset is beyond Shadow RAM limit\n");
    79			return -EINVAL;
    80		}
    81	
    82		do {
    83			u32 read_size, sector_offset;
    84	
    85			/* ice_aq_read_nvm cannot read more than 4KB at a time.
    86			 * Additionally, a read from the Shadow RAM may not cross over
    87			 * a sector boundary. Conveniently, the sector size is also
    88			 * 4KB.
    89			 */
    90			sector_offset = offset % ICE_AQ_MAX_BUF_LEN;
    91			read_size = min_t(u32, ICE_AQ_MAX_BUF_LEN - sector_offset,
    92					  inlen - bytes_read);
    93	
    94			last_cmd = !(bytes_read + read_size < inlen);
    95	
    96			status = ice_aq_read_nvm(hw, ICE_AQC_NVM_START_POINT,
    97						 offset, read_size,
    98						 data + bytes_read, last_cmd,
    99						 read_shadow_ram, NULL);
   100			if (status) {
 > 101				if (hw->adminq.sq_last_status != ICE_AQ_RC_EBUSY ||
   102				    retry_cnt > ICE_SQ_SEND_MAX_EXECUTE)
   103					break;
   104				ice_debug(hw, ICE_DBG_NVM,
   105					  "NVM read EBUSY error, retry %d\n",
   106					  retry_cnt + 1);
   107				last_cmd = false;
   108				ice_release_nvm(hw);
   109				msleep(ICE_SQ_SEND_DELAY_TIME_MS);
   110				status = ice_acquire_nvm(hw, ICE_RES_READ);
   111				if (status)
   112					break;
   113				retry_cnt++;
   114			} else {
   115				bytes_read += read_size;
   116				offset += read_size;
   117				retry_cnt = 0;
   118			}
   119		} while (!last_cmd);
   120	
   121		*length = bytes_read;
   122		return status;
   123	}
   124	

--
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
