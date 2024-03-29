Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A728926C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Mar 2024 23:30:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 74115606B0;
	Fri, 29 Mar 2024 22:30:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZlnLUgrEgUs5; Fri, 29 Mar 2024 22:30:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62EE9606EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711751400;
	bh=W2w6QxkZ3R8rHwGFcwvBRrtW0aoMcSHoPGZ90kg8cJs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=30EdYY+KWwKbXvDw4c11I8bT1QlxM86q4P3at6eC9XsmRfD/lzrvl7Uu9fC25MKQu
	 wmj5dj9n9Fnd0vAlixIv1rCt4I7nIFfxpMohGZDJMD2zPOKQBMolNUsioEn2NGAgsu
	 Xv5a0dLGrx7KwOiiFYzLa0qhaG7WgI3GcAwb/edjfpIDo8e8hDE227hX4m9Ky5od0a
	 69KLodADMNgG2ryu7zYjrNgFhKrvzx9qZXJSLhZPeZhYkw7GBsqa7b1iWiNaJGomz9
	 nMEhYm6Scv/Fc4kq9SCOhcrJOGrhFLdzQjTUj8zA4bGeisI+xPVW7g8pgby/H+btwD
	 LV1pHQN61Q9mA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62EE9606EA;
	Fri, 29 Mar 2024 22:30:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36B6E1BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 22:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25E164017A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 22:29:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4HtkcqROLbUD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Mar 2024 22:29:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 183E7400F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 183E7400F8
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 183E7400F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Mar 2024 22:29:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id EBC8261A01;
 Fri, 29 Mar 2024 22:29:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A38DC433F1;
 Fri, 29 Mar 2024 22:29:55 +0000 (UTC)
Date: Fri, 29 Mar 2024 15:29:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240329152954.26a7ce75@kernel.org>
In-Reply-To: <20240329092321.16843-3-wojciech.drewek@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <20240329092321.16843-3-wojciech.drewek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711751395;
 bh=YclD2gFKAd0KYU/nqrMwp6tntz6Bp0xkpGNnD7iuj3c=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=af3tEf4riCb4f2NQ149pjvDrIXXmmP43YUOkyHbXZ+M94QTqDI0JCGEF6C9SwDi2v
 UbNo6lur4NhXefe9RSrYlvWkEgyygoEXlsnzAgBuwTthmMcxP2nKYOexYi7y8EYgAU
 s+LYfSGZY1szJRSJJk68i3GvMqw/Vxj3slvg7t75/MisPpwS+jb6RoyLsnYv0RKoVL
 12qu5ji4XYH50ruUZsUfcfxQseOwTzwtSilm9SNsMlGhgFPnOmb3sh5+EZ9kkw1axQ
 GhY5mxcMFxbnq+OPRpafTOvZpCjxq7fMQ4RgncWl/e6+tXnFeaTluLTysE2h8/dy/H
 aDL1nOLZRHWXA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=af3tEf4r
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max
 power support
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
Cc: netdev@vger.kernel.org, idosch@nvidia.com, edumazet@google.com,
 marcin.szycik@linux.intel.com, anthony.l.nguyen@intel.com,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 29 Mar 2024 10:23:20 +0100 Wojciech Drewek wrote:
> Some modules use nonstandard power levels. Adjust ethtool
> module implementation to support new attributes that will allow user
> to change maximum power.
> 
> Add three new get attributes:
> ETHTOOL_A_MODULE_MAX_POWER_SET (used for set as well) - currently set
>   maximum power in the cage

1) I'd keep the ETHTOOL_A_MODULE_POWER_ prefix, consistently.

2) The _SET makes it sound like an action. Can we go with
   ETHTOOL_A_MODULE_POWER_MAX ? Or ETHTOOL_A_MODULE_POWER_LIMIT?
   Yes, ETHTOOL_A_MODULE_POWER_LIMIT
        ETHTOOL_A_MODULE_POWER_MAX
        ETHTOOL_A_MODULE_POWER_MIN
   would sound pretty good to me.

> ETHTOOL_A_MODULE_MIN_POWER_ALLOWED - minimum power allowed in the
>   cage reported by device
> ETHTOOL_A_MODULE_MAX_POWER_ALLOWED - maximum power allowed in the
>   cage reported by device
> 
> Add two new set attributes:
> ETHTOOL_A_MODULE_MAX_POWER_SET (used for get as well) - change
>   maximum power in the cage to the given value (milliwatts)
> ETHTOOL_A_MODULE_MAX_POWER_RESET - reset maximum power setting to the
>   default value
> 
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  include/linux/ethtool.h              | 17 +++++--
>  include/uapi/linux/ethtool_netlink.h |  4 ++
>  net/ethtool/module.c                 | 74 ++++++++++++++++++++++++++--
>  net/ethtool/netlink.h                |  2 +-
>  4 files changed, 87 insertions(+), 10 deletions(-)
> 
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index f3af6b31c9f1..74ed8997443a 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -510,10 +510,18 @@ struct ethtool_module_eeprom {
>   * @policy: The power mode policy enforced by the host for the plug-in module.
>   * @mode: The operational power mode of the plug-in module. Should be filled by
>   *	device drivers on get operations.
> + * @min_pwr_allowed: minimum power allowed in the cage reported by device
> + * @max_pwr_allowed: maximum power allowed in the cage reported by device
> + * @max_pwr_set: maximum power currently set in the cage
> + * @max_pwr_reset: restore default minimum power
>   */
>  struct ethtool_module_power_params {
>  	enum ethtool_module_power_mode_policy policy;
>  	enum ethtool_module_power_mode mode;
> +	u32 min_pwr_allowed;
> +	u32 max_pwr_allowed;
> +	u32 max_pwr_set;
> +	u8 max_pwr_reset;

bool ?

> diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/ethtool_netlink.h
> index 3f89074aa06c..f7cd446b2a83 100644
> --- a/include/uapi/linux/ethtool_netlink.h
> +++ b/include/uapi/linux/ethtool_netlink.h
> @@ -882,6 +882,10 @@ enum {
>  	ETHTOOL_A_MODULE_HEADER,		/* nest - _A_HEADER_* */
>  	ETHTOOL_A_MODULE_POWER_MODE_POLICY,	/* u8 */
>  	ETHTOOL_A_MODULE_POWER_MODE,		/* u8 */
> +	ETHTOOL_A_MODULE_MAX_POWER_SET,		/* u32 */
> +	ETHTOOL_A_MODULE_MIN_POWER_ALLOWED,	/* u32 */
> +	ETHTOOL_A_MODULE_MAX_POWER_ALLOWED,	/* u32 */
> +	ETHTOOL_A_MODULE_MAX_POWER_RESET,	/* u8 */

flag ?

> @@ -77,6 +86,7 @@ static int module_fill_reply(struct sk_buff *skb,
>  			     const struct ethnl_reply_data *reply_base)
>  {
>  	const struct module_reply_data *data = MODULE_REPDATA(reply_base);
> +	u32 temp;

tmp ? temp sounds too much like temperature in context of power

>  static int
>  ethnl_set_module(struct ethnl_req_info *req_info, struct genl_info *info)
>  {
>  	struct ethtool_module_power_params power = {};
>  	struct ethtool_module_power_params power_new;
> -	const struct ethtool_ops *ops;
>  	struct net_device *dev = req_info->dev;
>  	struct nlattr **tb = info->attrs;
> +	const struct ethtool_ops *ops;
>  	int ret;
> +	bool mod;
>  
>  	ops = dev->ethtool_ops;
>  
> -	power_new.policy = nla_get_u8(tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY]);
>  	ret = ops->get_module_power_cfg(dev, &power, info->extack);
>  	if (ret < 0)
>  		return ret;
>  
> -	if (power_new.policy == power.policy)
> +	power_new.max_pwr_set = power.max_pwr_set;
> +	power_new.policy = power.policy;
> +
> +	ethnl_update_u32(&power_new.max_pwr_set,
> +			 tb[ETHTOOL_A_MODULE_MAX_POWER_SET], &mod);
> +	if (mod) {

I think we can use if (tb[ETHTOOL_A_MODULE_MAX_POWER_SET]) here
Less error prone for future additions.

> +		if (power_new.max_pwr_set > power.max_pwr_allowed) {
> +			NL_SET_ERR_MSG(info->extack, "Provided value is higher than maximum allowed");

NL_SET_ERR_MSG_ATTR() to point at the bad attribute.

> +			return -EINVAL;

ERANGE?

> +		} else if (power_new.max_pwr_set < power.min_pwr_allowed) {
> +			NL_SET_ERR_MSG(info->extack, "Provided value is lower than minimum allowed");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	ethnl_update_policy(&power_new.policy,
> +			    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY], &mod);
> +	ethnl_update_u8(&power_new.max_pwr_reset,
> +			tb[ETHTOOL_A_MODULE_MAX_POWER_RESET], &mod);

I reckon reset should not be allowed if none of the max_pwr values 
are set (i.e. most likely driver doesn't support the config)?

> +	if (!mod)
>  		return 0;
>  
> +	if (power_new.max_pwr_reset && power_new.max_pwr_set) {

Mmm. How is that gonna work? The driver is going to set max_pwr_set
to what's currently configured. So the user is expected to send
ETHTOOL_A_MODULE_MAX_POWER_SET = 0
ETHTOOL_A_MODULE_MAX_POWER_RESET = 1
to reset?

Just:

	if (tb[ETHTOOL_A_MODULE_MAX_POWER_RESET] &&
	    tb[ETHTOOL_A_MODULE_MAX_POWER_SET])

And you can validate this before doing any real work.

> +		NL_SET_ERR_MSG(info->extack, "Maximum power set and reset cannot be used at the same time");
> +		return 0;
> +	}
> +
>  	ret = ops->set_module_power_cfg(dev, &power_new, info->extack);
>  	return ret < 0 ? ret : 1;
>  }
-- 
pw-bot: cr
