Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB032FC45C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 00:04:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE17786C6D;
	Tue, 19 Jan 2021 23:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iXQITdbZZRuM; Tue, 19 Jan 2021 23:03:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26B7786DEA;
	Tue, 19 Jan 2021 23:03:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A52D1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35A6385C19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mG9PxM+wTowm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 Jan 2021 23:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A670485BCE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 Jan 2021 23:03:55 +0000 (UTC)
IronPort-SDR: fJz/tw1QanSIeeVlc1Q8WwKiD0f4902OTf/Hv+fhrqUwElvRY/sgheS/GDS2VdSgZuLMFkh3JY
 PZ16I9B7IPUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="175505999"
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="175505999"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 15:03:53 -0800
IronPort-SDR: Mc++cM/RBl4fQ/xQyf2JcwRT2PysywenJYxgzI3JLFumlR+DIRVw2ujfawhj7trULLkvauRgQx
 ori/nACfGl/Q==
X-IronPort-AV: E=Sophos;i="5.79,359,1602572400"; d="scan'208";a="355813109"
Received: from vdusetty-mobl.amr.corp.intel.com (HELO
 vcostago-mobl2.amr.corp.intel.com) ([10.209.124.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 15:03:51 -0800
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
In-Reply-To: <20210119005224.yqrpyr2d7xawhbtf@skbuf>
References: <20210119004028.2809425-1-vinicius.gomes@intel.com>
 <20210119004028.2809425-2-vinicius.gomes@intel.com>
 <20210119005224.yqrpyr2d7xawhbtf@skbuf>
Date: Tue, 19 Jan 2021 15:03:42 -0800
Message-ID: <87v9bszfzl.fsf@vcostago-mobl2.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/8] ethtool: Add support
 for configuring frame preemption
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
Cc: "Jose.Abreu@synopsys.com" <Jose.Abreu@synopsys.com>,
 "mkubecek@suse.cz" <mkubecek@suse.cz>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Po Liu <po.liu@nxp.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vladimir,

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> On Mon, Jan 18, 2021 at 04:40:21PM -0800, Vinicius Costa Gomes wrote:
>> +int ethnl_set_preempt(struct sk_buff *skb, struct genl_info *info)
>> +{
>> +	struct ethnl_req_info req_info = {};
>> +	struct nlattr **tb = info->attrs;
>> +	struct ethtool_fp preempt = {};
>> +	struct net_device *dev;
>> +	bool mod = false;
>> +	int ret;
>> +
>> +	ret = ethnl_parse_header_dev_get(&req_info,
>> +					 tb[ETHTOOL_A_PREEMPT_HEADER],
>> +					 genl_info_net(info), info->extack,
>> +					 true);
>> +	if (ret < 0)
>> +		return ret;
>> +	dev = req_info.dev;
>> +	ret = -EOPNOTSUPP;
>> +	if (!dev->ethtool_ops->get_preempt ||
>> +	    !dev->ethtool_ops->set_preempt)
>> +		goto out_dev;
>> +
>> +	rtnl_lock();
>
> I'm a bit of a noob when it comes to ethtool (netlink or otherwise).
> Why do you take the rtnl_mutex when updating some purely hardware
> values, what netdev state is there to protect? Can this get->modify->set
> sequence be serialized using other locking mechanism than rtnl_mutex?

From what I understand, configuration changes to netdevice should be
protected by rtnl_mutex, for example, to avoid the device disappearing
while the configuration is in progress. I don't think there's any other
finer grained lock that can be used here.


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
