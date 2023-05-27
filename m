Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E26C6713281
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 May 2023 06:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 888A2611C7;
	Sat, 27 May 2023 04:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 888A2611C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685160902;
	bh=bKiq8w2KK4Bqz3kONwmcBW/alfeYxCuBN6FPApZ7Co8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nSKGKaMCOUIwJrrOZrX+PCZ7pLqRbBi8I4m/j/o++9xwRyUpeb/z0Onciqs++H1TX
	 U7+7FM3sSpzY5w4PqVCfRafSfkfQK0G1vwNb6/U6rmABW0auzjwdpYizggGJ/pkzRe
	 FUoqlFRgkPeFBODt+t/lwyP0tAXmHimEl/WtYskbTHZ01f1cj8UdxkOJiOgbeL1uaa
	 B7RhK29CQM1uY2Z6DyCNLj+iqDtNKLgQXlP+z/2osGcpN59zQ8Px1S20PAHs53wTZq
	 e3pGTIH/74a7u2gd1E5zKFrkDo4BKep2l9brA2pPT6pYlk/qXyrPB7GKJEn+P9KSPL
	 nuiwOhD3GyDOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Uh_eYcmrPCcI; Sat, 27 May 2023 04:15:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80E3C61199;
	Sat, 27 May 2023 04:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 80E3C61199
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 219181BF333
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 May 2023 04:14:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ED7DF61199
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 May 2023 04:14:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED7DF61199
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O7ih2BcF32vQ for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 May 2023 04:14:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 355BF60FE0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 355BF60FE0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 May 2023 04:14:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="333983541"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="333983541"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 21:14:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="770517179"
X-IronPort-AV: E=Sophos;i="6.00,195,1681196400"; d="scan'208";a="770517179"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 26 May 2023 21:14:51 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1q2lKN-000JlK-0U;
 Sat, 27 May 2023 04:14:51 +0000
Date: Sat, 27 May 2023 12:14:23 +0800
From: kernel test robot <lkp@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <202305271105.qPWszTyo-lkp@intel.com>
References: <20230526222158.2685796-4-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230526222158.2685796-4-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685160894; x=1716696894;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=T5ebpIktmJDzAxNHSLox/7Q/mOk+uVEel3x+wwYe+E4=;
 b=d4GHh1EAaiahcWZxfifTA0YAcJU7b9urVh1rl/tWoTMF5wFpSgi0fZdd
 Q8R20K80smkFg0DExwXhoE6Gar3CvRGPQVWn8cosyY3T+tOzCOPyIsDoN
 Wtpx8Xfvf6e+V4nHRfXgqpprhcRGFfiqL8hZ0jBnrYlPt5+oC9Q66XwHT
 0cTy6HCungGN7UoDfDcDF7Wl1ZBFVxmT0WYerGkspomYE0x9flwCpTE2F
 dxh5wqSWuomUdvS2Y8JI/ogI1Ri1JR2HWmeSLlqcwW+VwzGEl7B29ka2S
 TBgVLaJEicZnJPObc+xGSu7x/Whmd9jasrdDQZzSwNHWFGPaqatwBNC/Q
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d4GHh1EA
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 3/5] ice: introduce
 ICE_TX_TSTAMP_WORK enumeration
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
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jacob,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 1e806efa4f2837a829044df27e1196a4fd520ba3]

url:    https://github.com/intel-lab-lkp/linux/commits/Jacob-Keller/ice-handle-extts-in-the-miscellaneous-interrupt-thread/20230527-062501
base:   1e806efa4f2837a829044df27e1196a4fd520ba3
patch link:    https://lore.kernel.org/r/20230526222158.2685796-4-jacob.e.keller%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next 3/5] ice: introduce ICE_TX_TSTAMP_WORK enumeration
config: x86_64-randconfig-x096-20230526 (https://download.01.org/0day-ci/archive/20230527/202305271105.qPWszTyo-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        mkdir -p ~/bin
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/23cbd0608f6febe437dc272b1d38fe6fb96e7b7a
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Jacob-Keller/ice-handle-extts-in-the-miscellaneous-interrupt-thread/20230527-062501
        git checkout 23cbd0608f6febe437dc272b1d38fe6fb96e7b7a
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang ~/bin/make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/net/ethernet/intel/ice/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202305271105.qPWszTyo-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/net/ethernet/intel/ice/ice_ptp.c:670:7: warning: unused variable 'more_timestamps' [-Wunused-variable]
           bool more_timestamps;
                ^
   1 warning generated.


vim +/more_timestamps +670 drivers/net/ethernet/intel/ice/ice_ptp.c

3ad5c10bf21d1d6 Jacob Keller       2022-12-05  618  
06c16d89d2cbe28 Jacob Keller       2021-06-09  619  /**
23cbd0608f6febe Jacob Keller       2023-05-26  620   * ice_ptp_process_tx_tstamp - Process Tx timestamps for a port
1229b33973c7b89 Karol Kolacinski   2022-09-16  621   * @tx: the PTP Tx timestamp tracker
06c16d89d2cbe28 Jacob Keller       2021-06-09  622   *
4b1251bdd18886c Jacob Keller       2022-07-27  623   * Process timestamps captured by the PHY associated with this port. To do
4b1251bdd18886c Jacob Keller       2022-07-27  624   * this, loop over each index with a waiting skb.
4b1251bdd18886c Jacob Keller       2022-07-27  625   *
4b1251bdd18886c Jacob Keller       2022-07-27  626   * If a given index has a valid timestamp, perform the following steps:
4b1251bdd18886c Jacob Keller       2022-07-27  627   *
d40fd60093325cd Jacob Keller       2022-12-05  628   * 1) check that the timestamp request is not stale
d40fd60093325cd Jacob Keller       2022-12-05  629   * 2) check that a timestamp is ready and available in the PHY memory bank
d40fd60093325cd Jacob Keller       2022-12-05  630   * 3) read and copy the timestamp out of the PHY register
d40fd60093325cd Jacob Keller       2022-12-05  631   * 4) unlock the index by clearing the associated in_use bit
d40fd60093325cd Jacob Keller       2022-12-05  632   * 5) check if the timestamp is stale, and discard if so
d40fd60093325cd Jacob Keller       2022-12-05  633   * 6) extend the 40 bit timestamp value to get a 64 bit timestamp value
d40fd60093325cd Jacob Keller       2022-12-05  634   * 7) send this 64 bit timestamp to the stack
4b1251bdd18886c Jacob Keller       2022-07-27  635   *
d40fd60093325cd Jacob Keller       2022-12-05  636   * Note that we do not hold the tracking lock while reading the Tx timestamp.
d40fd60093325cd Jacob Keller       2022-12-05  637   * This is because reading the timestamp requires taking a mutex that might
d40fd60093325cd Jacob Keller       2022-12-05  638   * sleep.
0dd928626392386 Jacob Keller       2022-12-05  639   *
d40fd60093325cd Jacob Keller       2022-12-05  640   * The only place where we set in_use is when a new timestamp is initiated
d40fd60093325cd Jacob Keller       2022-12-05  641   * with a slot index. This is only called in the hard xmit routine where an
d40fd60093325cd Jacob Keller       2022-12-05  642   * SKB has a request flag set. The only places where we clear this bit is this
d40fd60093325cd Jacob Keller       2022-12-05  643   * function, or during teardown when the Tx timestamp tracker is being
d40fd60093325cd Jacob Keller       2022-12-05  644   * removed. A timestamp index will never be re-used until the in_use bit for
d40fd60093325cd Jacob Keller       2022-12-05  645   * that index is cleared.
0dd928626392386 Jacob Keller       2022-12-05  646   *
0dd928626392386 Jacob Keller       2022-12-05  647   * If a Tx thread starts a new timestamp, we might not begin processing it
0dd928626392386 Jacob Keller       2022-12-05  648   * right away but we will notice it at the end when we re-queue the task.
0dd928626392386 Jacob Keller       2022-12-05  649   *
0dd928626392386 Jacob Keller       2022-12-05  650   * If a Tx thread starts a new timestamp just after this function exits, the
0dd928626392386 Jacob Keller       2022-12-05  651   * interrupt for that timestamp should re-trigger this function once
0dd928626392386 Jacob Keller       2022-12-05  652   * a timestamp is ready.
0dd928626392386 Jacob Keller       2022-12-05  653   *
d40fd60093325cd Jacob Keller       2022-12-05  654   * In cases where the PTP hardware clock was directly adjusted, some
d40fd60093325cd Jacob Keller       2022-12-05  655   * timestamps may not be able to safely use the timestamp extension math. In
d40fd60093325cd Jacob Keller       2022-12-05  656   * this case, software will set the stale bit for any outstanding Tx
d40fd60093325cd Jacob Keller       2022-12-05  657   * timestamps when the clock is adjusted. Then this function will discard
d40fd60093325cd Jacob Keller       2022-12-05  658   * those captured timestamps instead of sending them to the stack.
0dd928626392386 Jacob Keller       2022-12-05  659   *
0dd928626392386 Jacob Keller       2022-12-05  660   * If a Tx packet has been waiting for more than 2 seconds, it is not possible
0dd928626392386 Jacob Keller       2022-12-05  661   * to correctly extend the timestamp using the cached PHC time. It is
0dd928626392386 Jacob Keller       2022-12-05  662   * extremely unlikely that a packet will ever take this long to timestamp. If
0dd928626392386 Jacob Keller       2022-12-05  663   * we detect a Tx timestamp request that has waited for this long we assume
0dd928626392386 Jacob Keller       2022-12-05  664   * the packet will never be sent by hardware and discard it without reading
0dd928626392386 Jacob Keller       2022-12-05  665   * the timestamp register.
06c16d89d2cbe28 Jacob Keller       2021-06-09  666   */
23cbd0608f6febe Jacob Keller       2023-05-26  667  static void ice_ptp_process_tx_tstamp(struct ice_ptp_tx *tx)
06c16d89d2cbe28 Jacob Keller       2021-06-09  668  {
4b1251bdd18886c Jacob Keller       2022-07-27  669  	struct ice_ptp_port *ptp_port;
f0ae124019faaa0 Jacob Keller       2022-12-05 @670  	bool more_timestamps;
4b1251bdd18886c Jacob Keller       2022-07-27  671  	struct ice_pf *pf;
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  672  	struct ice_hw *hw;
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  673  	u64 tstamp_ready;
fcc2cef37fed567 Daniel Vacek       2023-01-19  674  	bool link_up;
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  675  	int err;
4b1251bdd18886c Jacob Keller       2022-07-27  676  	u8 idx;
06c16d89d2cbe28 Jacob Keller       2021-06-09  677  
4b1251bdd18886c Jacob Keller       2022-07-27  678  	if (!tx->init)
23cbd0608f6febe Jacob Keller       2023-05-26  679  		return;
06c16d89d2cbe28 Jacob Keller       2021-06-09  680  
4b1251bdd18886c Jacob Keller       2022-07-27  681  	ptp_port = container_of(tx, struct ice_ptp_port, tx);
4b1251bdd18886c Jacob Keller       2022-07-27  682  	pf = ptp_port_to_pf(ptp_port);
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  683  	hw = &pf->hw;
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  684  
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  685  	/* Read the Tx ready status first */
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  686  	err = ice_get_phy_tx_tstamp_ready(hw, tx->block, &tstamp_ready);
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  687  	if (err)
23cbd0608f6febe Jacob Keller       2023-05-26  688  		return;
4b1251bdd18886c Jacob Keller       2022-07-27  689  
fcc2cef37fed567 Daniel Vacek       2023-01-19  690  	/* Drop packets if the link went down */
fcc2cef37fed567 Daniel Vacek       2023-01-19  691  	link_up = ptp_port->link_up;
fcc2cef37fed567 Daniel Vacek       2023-01-19  692  
4b1251bdd18886c Jacob Keller       2022-07-27  693  	for_each_set_bit(idx, tx->in_use, tx->len) {
4b1251bdd18886c Jacob Keller       2022-07-27  694  		struct skb_shared_hwtstamps shhwtstamps = {};
6b5cbc8c4ec71e4 Sergey Temerkhanov 2022-12-05  695  		u8 phy_idx = idx + tx->offset;
0dd928626392386 Jacob Keller       2022-12-05  696  		u64 raw_tstamp = 0, tstamp;
fcc2cef37fed567 Daniel Vacek       2023-01-19  697  		bool drop_ts = !link_up;
4b1251bdd18886c Jacob Keller       2022-07-27  698  		struct sk_buff *skb;
4b1251bdd18886c Jacob Keller       2022-07-27  699  
0dd928626392386 Jacob Keller       2022-12-05  700  		/* Drop packets which have waited for more than 2 seconds */
0dd928626392386 Jacob Keller       2022-12-05  701  		if (time_is_before_jiffies(tx->tstamps[idx].start + 2 * HZ)) {
0dd928626392386 Jacob Keller       2022-12-05  702  			drop_ts = true;
0dd928626392386 Jacob Keller       2022-12-05  703  
0dd928626392386 Jacob Keller       2022-12-05  704  			/* Count the number of Tx timestamps that timed out */
0dd928626392386 Jacob Keller       2022-12-05  705  			pf->ptp.tx_hwtstamp_timeouts++;
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  706  		}
0dd928626392386 Jacob Keller       2022-12-05  707  
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  708  		/* Only read a timestamp from the PHY if its marked as ready
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  709  		 * by the tstamp_ready register. This avoids unnecessary
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  710  		 * reading of timestamps which are not yet valid. This is
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  711  		 * important as we must read all timestamps which are valid
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  712  		 * and only timestamps which are valid during each interrupt.
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  713  		 * If we do not, the hardware logic for generating a new
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  714  		 * interrupt can get stuck on some devices.
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  715  		 */
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  716  		if (!(tstamp_ready & BIT_ULL(phy_idx))) {
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  717  			if (drop_ts)
0dd928626392386 Jacob Keller       2022-12-05  718  				goto skip_ts_read;
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  719  
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  720  			continue;
0dd928626392386 Jacob Keller       2022-12-05  721  		}
0dd928626392386 Jacob Keller       2022-12-05  722  
4b1251bdd18886c Jacob Keller       2022-07-27  723  		ice_trace(tx_tstamp_fw_req, tx->tstamps[idx].skb, idx);
4b1251bdd18886c Jacob Keller       2022-07-27  724  
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  725  		err = ice_read_phy_tstamp(hw, tx->block, phy_idx, &raw_tstamp);
fcc2cef37fed567 Daniel Vacek       2023-01-19  726  		if (err && !drop_ts)
4b1251bdd18886c Jacob Keller       2022-07-27  727  			continue;
4b1251bdd18886c Jacob Keller       2022-07-27  728  
4b1251bdd18886c Jacob Keller       2022-07-27  729  		ice_trace(tx_tstamp_fw_done, tx->tstamps[idx].skb, idx);
4b1251bdd18886c Jacob Keller       2022-07-27  730  
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  731  		/* For PHYs which don't implement a proper timestamp ready
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  732  		 * bitmap, verify that the timestamp value is different
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  733  		 * from the last cached timestamp. If it is not, skip this for
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  734  		 * now assuming it hasn't yet been captured by hardware.
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  735  		 */
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  736  		if (!drop_ts && tx->verify_cached &&
4b1251bdd18886c Jacob Keller       2022-07-27  737  		    raw_tstamp == tx->tstamps[idx].cached_tstamp)
4b1251bdd18886c Jacob Keller       2022-07-27  738  			continue;
4b1251bdd18886c Jacob Keller       2022-07-27  739  
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  740  		/* Discard any timestamp value without the valid bit set */
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  741  		if (!(raw_tstamp & ICE_PTP_TS_VALID))
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  742  			drop_ts = true;
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  743  
0dd928626392386 Jacob Keller       2022-12-05  744  skip_ts_read:
4b1251bdd18886c Jacob Keller       2022-07-27  745  		spin_lock(&tx->lock);
10e4b4a3a3e1b70 Jacob Keller       2022-12-05  746  		if (tx->verify_cached && raw_tstamp)
4b1251bdd18886c Jacob Keller       2022-07-27  747  			tx->tstamps[idx].cached_tstamp = raw_tstamp;
4b1251bdd18886c Jacob Keller       2022-07-27  748  		clear_bit(idx, tx->in_use);
4b1251bdd18886c Jacob Keller       2022-07-27  749  		skb = tx->tstamps[idx].skb;
4b1251bdd18886c Jacob Keller       2022-07-27  750  		tx->tstamps[idx].skb = NULL;
d40fd60093325cd Jacob Keller       2022-12-05  751  		if (test_and_clear_bit(idx, tx->stale))
d40fd60093325cd Jacob Keller       2022-12-05  752  			drop_ts = true;
4b1251bdd18886c Jacob Keller       2022-07-27  753  		spin_unlock(&tx->lock);
06c16d89d2cbe28 Jacob Keller       2021-06-09  754  
0dd928626392386 Jacob Keller       2022-12-05  755  		/* It is unlikely but possible that the SKB will have been
0dd928626392386 Jacob Keller       2022-12-05  756  		 * flushed at this point due to link change or teardown.
4b1251bdd18886c Jacob Keller       2022-07-27  757  		 */
4b1251bdd18886c Jacob Keller       2022-07-27  758  		if (!skb)
4b1251bdd18886c Jacob Keller       2022-07-27  759  			continue;
4b1251bdd18886c Jacob Keller       2022-07-27  760  
0dd928626392386 Jacob Keller       2022-12-05  761  		if (drop_ts) {
0dd928626392386 Jacob Keller       2022-12-05  762  			dev_kfree_skb_any(skb);
0dd928626392386 Jacob Keller       2022-12-05  763  			continue;
0dd928626392386 Jacob Keller       2022-12-05  764  		}
0dd928626392386 Jacob Keller       2022-12-05  765  
4b1251bdd18886c Jacob Keller       2022-07-27  766  		/* Extend the timestamp using cached PHC time */
4b1251bdd18886c Jacob Keller       2022-07-27  767  		tstamp = ice_ptp_extend_40b_ts(pf, raw_tstamp);
4b1251bdd18886c Jacob Keller       2022-07-27  768  		if (tstamp) {
4b1251bdd18886c Jacob Keller       2022-07-27  769  			shhwtstamps.hwtstamp = ns_to_ktime(tstamp);
4b1251bdd18886c Jacob Keller       2022-07-27  770  			ice_trace(tx_tstamp_complete, skb, idx);
06c16d89d2cbe28 Jacob Keller       2021-06-09  771  		}
06c16d89d2cbe28 Jacob Keller       2021-06-09  772  
4b1251bdd18886c Jacob Keller       2022-07-27  773  		skb_tstamp_tx(skb, &shhwtstamps);
4b1251bdd18886c Jacob Keller       2022-07-27  774  		dev_kfree_skb_any(skb);
4b1251bdd18886c Jacob Keller       2022-07-27  775  	}
23cbd0608f6febe Jacob Keller       2023-05-26  776  }
06c16d89d2cbe28 Jacob Keller       2021-06-09  777  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
