Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAB1539170
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:08:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AD1F41C12;
	Tue, 31 May 2022 13:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pthYKKpJkdsE; Tue, 31 May 2022 13:08:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F388C4183C;
	Tue, 31 May 2022 13:08:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 297AF1BF3B0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 09:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1561F4285C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 09:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GuAzKO4KmdLb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 May 2022 09:08:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E5954280F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 May 2022 09:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653642505; x=1685178505;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=C9nAhmJGVLFRsDfrnddwjcwKvsG0JoJ14Hik8F6vvqw=;
 b=XbfaeHIszMutKueYzK34NdzFbhWZ3jnxMr0RnTLVB6/ke8j6iZm00p/0
 xgv3+SnM1HSQD6SUTDFAyJkNAyIS1hJwCZPb8bJvfVT0PQ+tz28y4Pch0
 M8r+2po0M0hHrcV39DPG2RWQRpabAye2jFdkII9JVh4Cg84cTZO3V1C8k
 H0RFRO2PNFtRPGkgupWRHl1q1w4HFpLthDIHOT86F2Gmq7IV32grwO37o
 eVkxLTMNNf1TaieNj58dDFEmgxRWshmPPFnChplsJnwkw9w0QAD2xC88Z
 9Cd4EX+Nh+7nX1azg9I3/tONK0paAdhog2cwJ58/FYx0mZ9aLZ0SBFdjs g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10359"; a="273240602"
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="273240602"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:08:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,255,1647327600"; d="scan'208";a="603770259"
Received: from zhoufuro-mobl.ccr.corp.intel.com (HELO [10.255.30.80])
 ([10.255.30.80])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 02:08:21 -0700
Message-ID: <e6cb8b03-4d3d-b64b-0aca-642fe53ecb90@linux.intel.com>
Date: Fri, 27 May 2022 17:08:18 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org
References: <20220520011538.1098888-1-vinicius.gomes@intel.com>
 <20220520011538.1098888-10-vinicius.gomes@intel.com>
From: Zhou Furong <furong.zhou@linux.intel.com>
In-Reply-To: <20220520011538.1098888-10-vinicius.gomes@intel.com>
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 09/11] igc: Add support
 for Frame Preemption verification
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
Cc: jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, boon.leong.ong@intel.com,
 xiyou.wangcong@gmail.com, davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> +
> +	struct delayed_work fp_verification_work;
> +	unsigned long fp_start;
> +	bool fp_received_smd_v;
> +	bool fp_received_smd_r;
> +	unsigned int fp_verify_cnt;
> +	enum frame_preemption_state fp_tx_state;
> +	bool fp_disable_verify;

struct size would be smaller if add member to right place


> +	if (!netif_running(adapter->netdev))
> +		return -ENOTCONN;
> +
> +	/* FIXME: rename this function to something less specific, as
> +	 * it can be used outside XDP.
> +	 */
> +	ring = igc_xdp_get_tx_ring(adapter, cpu);
> +	nq = txring_txq(ring);
> +
> +	skb = alloc_skb(IGC_FP_SMD_FRAME_SIZE, GFP_KERNEL);
> +	if (!skb)
> +		return -ENOMEM;
> +
if there is chance of NOMEM, move this before
ring = igc_xdp_get_tx_ring(adapter, cpu);


> +static void igc_fp_verification_work(struct work_struct *work)
> +{
> +	struct delayed_work *dwork = to_delayed_work(work);
> +	struct igc_adapter *adapter;
> +	int err;
> +
> +	adapter = container_of(dwork, struct igc_adapter, fp_verification_work);
> +
please remove blank

> +	if (adapter->fp_disable_verify)
> +		goto done;
> +
> +	switch (adapter->fp_tx_state) {
> +	case FRAME_PREEMPTION_STATE_START:
> +		adapter->fp_received_smd_r = false;
> +		err = igc_xmit_smd_frame(adapter, IGC_SMD_TYPE_SMD_V);
> +		if (err < 0)
> +			netdev_err(adapter->netdev, "Error sending SMD-V frame\n");
> +
> +		adapter->fp_tx_state = FRAME_PREEMPTION_STATE_SENT;
state is SENT when send error?

> +		adapter->fp_start = jiffies;
> +		schedule_delayed_work(&adapter->fp_verification_work, IGC_FP_TIMEOUT);
> +		break;
> +





> +
> +			if (adapter->fp_verify_cnt > IGC_MAX_VERIFY_CNT) {
> +				adapter->fp_verify_cnt = 0;
> +				adapter->fp_tx_state = FRAME_PREEMPTION_STATE_FAILED;
> +				netdev_err(adapter->netdev,
> +					   "Exceeded number of attempts for frame preemption verification\n");
> +			} else {
> +				adapter->fp_tx_state = FRAME_PREEMPTION_STATE_START;
> +			}
> +			schedule_delayed_work(&adapter->fp_verification_work, IGC_FP_TIMEOUT);
> +		}
> +
> +		break;
> +
> +	case FRAME_PREEMPTION_STATE_FAILED:
> +	case FRAME_PREEMPTION_STATE_DONE:
miss default?

> +		break;
> +	}
> +
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
