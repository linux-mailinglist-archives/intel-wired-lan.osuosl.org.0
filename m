Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BC689335D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 18:40:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5F7A405B3;
	Sun, 31 Mar 2024 16:40:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b9Ra87Vt6ZHk; Sun, 31 Mar 2024 16:40:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 81424405A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711903212;
	bh=W2w6QxkZ3R8rHwGFcwvBRrtW0aoMcSHoPGZ90kg8cJs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FuUmAHP9VL9WR4kbNuMRSAWThJDixAMsTr82ji+poXCgGW99sZiuOXn1SrfHSsFku
	 A4T/ijVviidFt7+9c5qF5HtTSUiju8uO415mRqmkoujBkTS4aDYvGlpUMlxim2Atym
	 aSG3/VaZV/tJy6AZt02/DqtSDUJh88EHqZA1VqssNXkaoabvivcqw93pawJY54nwqg
	 updq/yc67mwk3rzkaWgYa2rY8KR0my5Vm5hnLOSxexU3UIBdickQGNCrHE/Byeo196
	 hA29XILQapK9sMm8wKg5uL7P6Fe88bF4xqKTD6+j/AWznGmnJ6RYiHizEe8Gj1JmlP
	 RNRcU+RHLHjQw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 81424405A0;
	Sun, 31 Mar 2024 16:40:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9AC701BF267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94323402C6
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:40:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v4Em8lTdX7X7 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 16:40:09 +0000 (UTC)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=a.mx.secunet.com; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7E22040142
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E22040142
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7E22040142
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 0D7CF208A2;
 Sun, 31 Mar 2024 18:40:08 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xJvMyPpH9Zv2; Sun, 31 Mar 2024 18:40:07 +0200 (CEST)
Received: from mailout2.secunet.com (mailout2.secunet.com [62.96.220.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 859562087B;
 Sun, 31 Mar 2024 18:40:04 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 859562087B
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout2.secunet.com (Postfix) with ESMTP id 773B8800050;
 Sun, 31 Mar 2024 18:40:04 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 18:40:04 +0200
Received: from Pickup by mbx-essen-01.secunet.de with Microsoft SMTP Server id
 15.1.2507.17; Sun, 31 Mar 2024 16:36:43 +0000
X-sender: <netdev+bounces-83478-peter.schumann=secunet.com@vger.kernel.org>
X-Receiver: <peter.schumann@secunet.com> ORCPT=rfc822;
 peter.schumann@secunet.com
X-CreatedBy: MSExchange15
X-HeloDomain: mbx-essen-01.secunet.de
X-ExtendedProps: BQBjAAoA+kimlidQ3AgFADcAAgAADwA8AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5NYWlsUmVjaXBpZW50Lk9yZ2FuaXphdGlvblNjb3BlEQAAAAAAAAAAAAAAAAAAAAAADwA/AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5zcG9ydC5EaXJlY3RvcnlEYXRhLk1haWxEZWxpdmVyeVByaW9yaXR5DwADAAAATG93
X-Source: SMTP:Default MBX-ESSEN-02
X-SourceIPAddress: 10.53.40.197
X-EndOfInjectedXHeaders: 12659
X-Virus-Scanned: by secunet
Received-SPF: Pass (sender SPF authorized) identity=mailfrom;
 client-ip=147.75.199.223; helo=ny.mirrors.kernel.org;
 envelope-from=netdev+bounces-83478-peter.schumann=secunet.com@vger.kernel.org;
 receiver=peter.schumann@secunet.com 
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 9E6D320883
X-Original-To: netdev@vger.kernel.org
ARC-Seal: i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
 t=1711751395; cv=none;
 b=r8+B1IFFag2HuI6zBBZXeH+ixu4+v7LcY5wOF3/6wgJ223E0kn3xcKcwo+b9S0QAED6F64X45+Ly5CTR1T3QpysOskVw+gmCEHA7C6kqyn9w3eNJ9i4Hl/Myvb/UKIYrlUrLJA2ZIcn/zPzyZPRsgS1BxBM9vsbq2bHqgBZeDjM=
ARC-Message-Signature: i=1; a=rsa-sha256; d=subspace.kernel.org;
 s=arc-20240116; t=1711751395; c=relaxed/simple;
 bh=YclD2gFKAd0KYU/nqrMwp6tntz6Bp0xkpGNnD7iuj3c=;
 h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
 MIME-Version:Content-Type;
 b=rJ7Bn5B+eJPtxb4RNqsOXTzMjoxUUJ5pI/JOpQlNhT4ZcDDv6O01CZ1g3k27TriDuD2V9f4K/PGRphgNiz/gM/TFCcH5mAojrujO3pTOIJTI+aIIUz1rLn0diYOJV7K7HUs8cBglYDPH5ri6aPJNGmrNMWJbh0ZerjwDrcQhuoc=
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=kernel.org
 header.i=@kernel.org header.b=af3tEf4r; arc=none smtp.client-ip=10.30.226.201
Date: Fri, 29 Mar 2024 15:29:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <20240329152954.26a7ce75@kernel.org>
In-Reply-To: <20240329092321.16843-3-wojciech.drewek@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
 <20240329092321.16843-3-wojciech.drewek@intel.com>
Precedence: bulk
X-Mailing-List: netdev@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-EXCLAIMER-MD-CONFIG: 2c86f778-e09b-4440-8b15-867914633a10
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
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=af3tEf4r
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.b="af3tEf4r"
X-Mailman-Original-Authentication-Results: smtp.subspace.kernel.org; arc=none
 smtp.client-ip=10.30.226.201
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/3] ethtool: Introduce max
 power support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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

