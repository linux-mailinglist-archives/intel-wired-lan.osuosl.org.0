Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5E889329A
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 18:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B38B7405AA;
	Sun, 31 Mar 2024 16:11:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LeCz6YbOFN1G; Sun, 31 Mar 2024 16:11:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EF25405A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711901509;
	bh=OTmpui0NCfprUFMy+YSv4uJImDe45jMG8OoiRSltl5o=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3AIz971gw4FdChvBbLj0hhgc7BWuQkb5lF7+i9FXLk4ODv14W9TlsWbstBGsIAEeq
	 ElIOmo2nsuafaemEdhBKl2A41T0AeaT3LZ9jPA+gHBdDmqiOtQnGfJwjLEb8hxs0DJ
	 ukwk0ZVuGfnShYYWsqhu965tpgpHxxbbyoKkoUkuW31/TL8bGP89fndQcE0xEujmTE
	 7OzwiwG+ymIXta8ksuwWQz5ZzyMIMJrNUucFdvHV8uKlpLzTGoLybUQ7LSnULabh9S
	 OSG8GQ7ndQcKpvKFUOwrnredK0lBePZzbHcbg16vlSDSKESf16qNKf+Qrd5Ol4ixtt
	 GpSKFziUn/UHA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9EF25405A7;
	Sun, 31 Mar 2024 16:11:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 91AD41BF267
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79CBA4036A
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:11:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LwsdHwIpMHfN for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 16:11:37 +0000 (UTC)
Received-SPF: Softfail (mailfrom) identity=mailfrom; client-ip=62.96.220.36;
 helo=a.mx.secunet.com; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5BD2D40142
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5BD2D40142
Received: from a.mx.secunet.com (a.mx.secunet.com [62.96.220.36])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5BD2D40142
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 16:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by a.mx.secunet.com (Postfix) with ESMTP id 6A9B520892;
 Sun, 31 Mar 2024 18:02:05 +0200 (CEST)
X-Virus-Scanned: by secunet
Received: from a.mx.secunet.com ([127.0.0.1])
 by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oes2_hdfGgzC; Sun, 31 Mar 2024 18:02:04 +0200 (CEST)
Received: from mailout2.secunet.com (mailout2.secunet.com [62.96.220.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by a.mx.secunet.com (Postfix) with ESMTPS id 3E1A62083B;
 Sun, 31 Mar 2024 18:02:03 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com 3E1A62083B
Received: from cas-essen-01.secunet.de (unknown [10.53.40.201])
 by mailout2.secunet.com (Postfix) with ESMTP id 3114D80004A;
 Sun, 31 Mar 2024 18:02:03 +0200 (CEST)
Received: from mbx-essen-01.secunet.de (10.53.40.197) by
 cas-essen-01.secunet.de (10.53.40.201) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 31 Mar 2024 18:02:03 +0200
Received: from Pickup by mbx-essen-01.secunet.de with Microsoft SMTP Server id
 15.1.2507.17; Sun, 31 Mar 2024 15:52:41 +0000
X-sender: <netdev+bounces-83478-peter.schumann=secunet.com@vger.kernel.org>
X-Receiver: <peter.schumann@secunet.com>
 ORCPT=rfc822;peter.schumann@secunet.com NOTIFY=NEVER;
 X-ExtendedProps=BQAVABYAAgAAAAUAFAARAJ05ab4WgQhHsqdZ7WUjHykPADUAAABNaWNyb3NvZnQuRXhjaGFuZ2UuVHJhbnNwb3J0LkRpcmVjdG9yeURhdGEuSXNSZXNvdXJjZQIAAAUAagAJAAEAAAAAAAAABQAWAAIAAAUAQwACAAAFAEYABwADAAAABQBHAAIAAAUAEgAPAGAAAAAvbz1zZWN1bmV0L291PUV4Y2hhbmdlIEFkbWluaXN0cmF0aXZlIEdyb3VwIChGWURJQk9IRjIzU1BETFQpL2NuPVJlY2lwaWVudHMvY249UGV0ZXIgU2NodW1hbm41ZTcFAAsAFwC+AAAAQ5IZ35DtBUiRVnd98bETxENOPURCNCxDTj1EYXRhYmFzZXMsQ049RXhjaGFuZ2UgQWRtaW5pc3RyYXRpdmUgR3JvdXAgKEZZRElCT0hGMjNTUERMVCksQ049QWRtaW5pc3RyYXRpdmUgR3JvdXBzLENOPXNlY3VuZXQsQ049TWljcm9zb2Z0IEV4Y2hhbmdlLENOPVNlcnZpY2VzLENOPUNvbmZpZ3VyYXRpb24sREM9c2VjdW5ldCxEQz1kZQUADgARAC7JU/le071Fhs0mWv1VtVsFAB0ADwAMAAAAbWJ4LWVzc2VuLTAxBQA8AAIAAA8ANgAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5EaXNwbGF5TmFtZQ8ADwAAAFNjaHVtYW5uLCBQZXRlcgUADAACAAAFAGwAAgAABQBYABcASAAAAJ05ab4WgQhHsqdZ7WUjHylDTj1TY2h1bWFubiBQZXRlcixPVT1Vc2VycyxPVT1NaWdyYXRpb24sREM9c2VjdW5ldCxEQz1kZQUAJgACAAEFACIADwAxAAAAQXV0b1Jlc3BvbnNlU3VwcHJlc3M6IDANClRyYW5zbWl0SGlzdG9yeTogRmFsc
 2UNCg8ALwAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuRXhwYW5zaW9uR3JvdXBUeXBlDwAVAAAATWVtYmVyc0dyb3VwRXhwYW5zaW9uBQAjAAIAAQ==
X-CreatedBy: MSExchange15
X-HeloDomain: a.mx.secunet.com
X-ExtendedProps: BQBjAAoAkQ1rGbMv3AgFAGEACAABAAAABQA3AAIAAA8APAAAAE1pY3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5Pcmdhbml6YXRpb25TY29wZREAAAAAAAAAAAAAAAAAAAAAAAUASQACAAEFAAQAFCABAAAAGgAAAHBldGVyLnNjaHVtYW5uQHNlY3VuZXQuY29tBQAGAAIAAQUAKQACAAEPAAkAAABDSUF1ZGl0ZWQCAAEFAAIABwABAAAABQADAAcAAAAAAAUABQACAAEFAGIACgBRAAAAzIoAAAUAZAAPAAMAAABIdWI=
X-Source: SMTP:Default MBX-ESSEN-01
X-SourceIPAddress: 62.96.220.36
X-EndOfInjectedXHeaders: 20161
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
Content-Transfer-Encoding: quoted-printable
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
 dmarc=fail (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=af3tEf4r
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
>=20
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
>=20
> Add two new set attributes:
> ETHTOOL_A_MODULE_MAX_POWER_SET (used for get as well) - change
>   maximum power in the cage to the given value (milliwatts)
> ETHTOOL_A_MODULE_MAX_POWER_RESET - reset maximum power setting to the
>   default value
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  include/linux/ethtool.h              | 17 +++++--
>  include/uapi/linux/ethtool_netlink.h |  4 ++
>  net/ethtool/module.c                 | 74 ++++++++++++++++++++++++++--
>  net/ethtool/netlink.h                |  2 +-
>  4 files changed, 87 insertions(+), 10 deletions(-)
>=20
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index f3af6b31c9f1..74ed8997443a 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -510,10 +510,18 @@ struct ethtool_module_eeprom {
>   * @policy: The power mode policy enforced by the host for the plug-in m=
odule.
>   * @mode: The operational power mode of the plug-in module. Should be fi=
lled by
>   *	device drivers on get operations.
> + * @min_pwr_allowed: minimum power allowed in the cage reported by devic=
e
> + * @max_pwr_allowed: maximum power allowed in the cage reported by devic=
e
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

> diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/et=
htool_netlink.h
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
>  	const struct module_reply_data *data =3D MODULE_REPDATA(reply_base);
> +	u32 temp;

tmp ? temp sounds too much like temperature in context of power

>  static int
>  ethnl_set_module(struct ethnl_req_info *req_info, struct genl_info *info=
)
>  {
>  	struct ethtool_module_power_params power =3D {};
>  	struct ethtool_module_power_params power_new;
> -	const struct ethtool_ops *ops;
>  	struct net_device *dev =3D req_info->dev;
>  	struct nlattr **tb =3D info->attrs;
> +	const struct ethtool_ops *ops;
>  	int ret;
> +	bool mod;
> =20
>  	ops =3D dev->ethtool_ops;
> =20
> -	power_new.policy =3D nla_get_u8(tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY])=
;
>  	ret =3D ops->get_module_power_cfg(dev, &power, info->extack);
>  	if (ret < 0)
>  		return ret;
> =20
> -	if (power_new.policy =3D=3D power.policy)
> +	power_new.max_pwr_set =3D power.max_pwr_set;
> +	power_new.policy =3D power.policy;
> +
> +	ethnl_update_u32(&power_new.max_pwr_set,
> +			 tb[ETHTOOL_A_MODULE_MAX_POWER_SET], &mod);
> +	if (mod) {

I think we can use if (tb[ETHTOOL_A_MODULE_MAX_POWER_SET]) here
Less error prone for future additions.

> +		if (power_new.max_pwr_set > power.max_pwr_allowed) {
> +			NL_SET_ERR_MSG(info->extack, "Provided value is higher than maximum a=
llowed");

NL_SET_ERR_MSG_ATTR() to point at the bad attribute.

> +			return -EINVAL;

ERANGE?

> +		} else if (power_new.max_pwr_set < power.min_pwr_allowed) {
> +			NL_SET_ERR_MSG(info->extack, "Provided value is lower than minimum al=
lowed");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	ethnl_update_policy(&power_new.policy,
> +			    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY], &mod);
> +	ethnl_update_u8(&power_new.max_pwr_reset,
> +			tb[ETHTOOL_A_MODULE_MAX_POWER_RESET], &mod);

I reckon reset should not be allowed if none of the max_pwr values=20
are set (i.e. most likely driver doesn't support the config)?

> +	if (!mod)
>  		return 0;
> =20
> +	if (power_new.max_pwr_reset && power_new.max_pwr_set) {

Mmm. How is that gonna work? The driver is going to set max_pwr_set
to what's currently configured. So the user is expected to send
ETHTOOL_A_MODULE_MAX_POWER_SET =3D 0
ETHTOOL_A_MODULE_MAX_POWER_RESET =3D 1
to reset?

Just:

	if (tb[ETHTOOL_A_MODULE_MAX_POWER_RESET] &&
	    tb[ETHTOOL_A_MODULE_MAX_POWER_SET])

And you can validate this before doing any real work.

> +		NL_SET_ERR_MSG(info->extack, "Maximum power set and reset cannot be us=
ed at the same time");
> +		return 0;
> +	}
> +
>  	ret =3D ops->set_module_power_cfg(dev, &power_new, info->extack);
>  	return ret < 0 ? ret : 1;
>  }
--=20
pw-bot: cr

X-sender: <netdev+bounces-83478-steffen.klassert=3Dsecunet.com@vger.kernel.=
org>
X-Receiver: <steffen.klassert@secunet.com> ORCPT=3Drfc822;steffen.klassert@=
secunet.com NOTIFY=3DNEVER; X-ExtendedProps=3DBQAVABYAAgAAAAUAFAARAPDFCS25B=
AlDktII2g02frgPADUAAABNaWNyb3NvZnQuRXhjaGFuZ2UuVHJhbnNwb3J0LkRpcmVjdG9yeURh=
dGEuSXNSZXNvdXJjZQIAAAUAagAJAAEAAAAAAAAABQAWAAIAAAUAQwACAAAFAEYABwADAAAABQB=
HAAIAAAUAEgAPAGIAAAAvbz1zZWN1bmV0L291PUV4Y2hhbmdlIEFkbWluaXN0cmF0aXZlIEdyb3=
VwIChGWURJQk9IRjIzU1BETFQpL2NuPVJlY2lwaWVudHMvY249U3RlZmZlbiBLbGFzc2VydDY4Y=
wUACwAXAL4AAACheZxkHSGBRqAcAp3ukbifQ049REI2LENOPURhdGFiYXNlcyxDTj1FeGNoYW5n=
ZSBBZG1pbmlzdHJhdGl2ZSBHcm91cCAoRllESUJPSEYyM1NQRExUKSxDTj1BZG1pbmlzdHJhdGl=
2ZSBHcm91cHMsQ049c2VjdW5ldCxDTj1NaWNyb3NvZnQgRXhjaGFuZ2UsQ049U2VydmljZXMsQ0=
49Q29uZmlndXJhdGlvbixEQz1zZWN1bmV0LERDPWRlBQAOABEABiAS9uuMOkqzwmEZDvWNNQUAH=
QAPAAwAAABtYngtZXNzZW4tMDIFADwAAgAADwA2AAAATWljcm9zb2Z0LkV4Y2hhbmdlLlRyYW5z=
cG9ydC5NYWlsUmVjaXBpZW50LkRpc3BsYXlOYW1lDwARAAAAS2xhc3NlcnQsIFN0ZWZmZW4FAAw=
AAgAABQBsAAIAAAUAWAAXAEoAAADwxQktuQQJQ5LSCNoNNn64Q049S2xhc3NlcnQgU3RlZmZlbi=
xPVT1Vc2VycyxPVT1NaWdyYXRpb24sREM9c2VjdW5ldCxEQz1kZQUAJgACAAEFACIADwAxAAAAQ=
XV0b1Jlc3BvbnNlU3VwcHJlc3M6IDANClRyYW5zbWl0SGlzdG9yeTogRmFsc2UNCg8ALwAAAE1p=
Y3Jvc29mdC5FeGNoYW5nZS5UcmFuc3BvcnQuRXhwYW5zaW9uR3JvdXBUeXBlDwAVAAAATWVtYmV=
yc0dyb3VwRXhwYW5zaW9uBQAjAAIAAQ=3D=3D
X-CreatedBy: MSExchange15
X-HeloDomain: a.mx.secunet.com
X-ExtendedProps: BQBjAAoAkQ1rGbMv3AgFAGEACAABAAAABQA3AAIAAA8APAAAAE1pY3Jvc2=
9mdC5FeGNoYW5nZS5UcmFuc3BvcnQuTWFpbFJlY2lwaWVudC5Pcmdhbml6YXRpb25TY29wZREAA=
AAAAAAAAAAAAAAAAAAAAAUASQACAAEFAAQAFCABAAAAHAAAAHN0ZWZmZW4ua2xhc3NlcnRAc2Vj=
dW5ldC5jb20FAAYAAgABBQApAAIAAQ8ACQAAAENJQXVkaXRlZAIAAQUAAgAHAAEAAAAFAAMABwA=
AAAAABQAFAAIAAQUAYgAKAFIAAADMigAABQBkAA8AAwAAAEh1Yg=3D=3D
X-Source: SMTP:Default MBX-ESSEN-01
X-SourceIPAddress: 62.96.220.36
X-EndOfInjectedXHeaders: 20181
Received: from cas-essen-02.secunet.de (10.53.40.202) by
 mbx-essen-01.secunet.de (10.53.40.197) with Microsoft SMTP Server
 (version=3DTLS1_2, cipher=3DTLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 29 Mar 2024 23:30:12 +0100
Received: from a.mx.secunet.com (62.96.220.36) by cas-essen-02.secunet.de
 (10.53.40.202) with Microsoft SMTP Server (version=3DTLS1_2,
 cipher=3DTLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Fronte=
nd
 Transport; Fri, 29 Mar 2024 23:30:12 +0100
Received: from localhost (localhost [127.0.0.1])
	by a.mx.secunet.com (Postfix) with ESMTP id 870DE20883
	for <steffen.klassert@secunet.com>; Fri, 29 Mar 2024 23:30:12 +0100 (CET)
X-Virus-Scanned: by secunet
X-Spam-Flag: NO
X-Spam-Score: -3.099
X-Spam-Level:
X-Spam-Status: No, score=3D-3.099 tagged_above=3D-999 required=3D2.1
	tests=3D[BAYES_00=3D-1.9, DKIMWL_WL_HIGH=3D-0.099, DKIM_SIGNED=3D0.1,
	DKIM_VALID=3D-0.1, DKIM_VALID_AU=3D-0.1, MAILING_LIST_MULTI=3D-1,
	RCVD_IN_DNSWL_NONE=3D-0.0001, SPF_HELO_NONE=3D0.001, SPF_PASS=3D-0.001]
	autolearn=3Dunavailable autolearn_force=3Dno
Authentication-Results: a.mx.secunet.com (amavisd-new);
	dkim=3Dpass (2048-bit key) header.d=3Dkernel.org
Received: from a.mx.secunet.com ([127.0.0.1])
	by localhost (a.mx.secunet.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 66TQ_oaDF-3X for <steffen.klassert@secunet.com>;
	Fri, 29 Mar 2024 23:30:11 +0100 (CET)
Received-SPF: Pass (sender SPF authorized) identity=3Dmailfrom; client-ip=
=3D147.75.80.249; helo=3Dam.mirrors.kernel.org; envelope-from=3Dnetdev+boun=
ces-83478-steffen.klassert=3Dsecunet.com@vger.kernel.org; receiver=3Dsteffe=
n.klassert@secunet.com=20
DKIM-Filter: OpenDKIM Filter v2.11.0 a.mx.secunet.com D1BDB208AC
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249]=
)
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by a.mx.secunet.com (Postfix) with ESMTPS id D1BDB208AC
	for <steffen.klassert@secunet.com>; Fri, 29 Mar 2024 23:30:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.2=
5.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B4B71F22D96
	for <steffen.klassert@secunet.com>; Fri, 29 Mar 2024 22:30:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B38413DDA5;
	Fri, 29 Mar 2024 22:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=3Dpass (2048-bit key) header.d=3Dkernel.org header.i=3D@kernel.org he=
ader.b=3D"af3tEf4r"
X-Original-To: netdev@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.or=
g [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6BB28DC1
	for <netdev@vger.kernel.org>; Fri, 29 Mar 2024 22:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=3Dnone smtp.client-ip=
=3D10.30.226.201
ARC-Seal: i=3D1; a=3Drsa-sha256; d=3Dsubspace.kernel.org; s=3Darc-20240116;
	t=3D1711751395; cv=3Dnone; b=3Dr8+B1IFFag2HuI6zBBZXeH+ixu4+v7LcY5wOF3/6wgJ=
223E0kn3xcKcwo+b9S0QAED6F64X45+Ly5CTR1T3QpysOskVw+gmCEHA7C6kqyn9w3eNJ9i4Hl/=
Myvb/UKIYrlUrLJA2ZIcn/zPzyZPRsgS1BxBM9vsbq2bHqgBZeDjM=3D
ARC-Message-Signature: i=3D1; a=3Drsa-sha256; d=3Dsubspace.kernel.org;
	s=3Darc-20240116; t=3D1711751395; c=3Drelaxed/simple;
	bh=3DYclD2gFKAd0KYU/nqrMwp6tntz6Bp0xkpGNnD7iuj3c=3D;
	h=3DDate:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=3DrJ7Bn5B+eJPtxb4RNqsOXTzMjoxUUJ5pI/JOpQlNhT=
4ZcDDv6O01CZ1g3k27TriDuD2V9f4K/PGRphgNiz/gM/TFCcH5mAojrujO3pTOIJTI+aIIUz1rL=
n0diYOJV7K7HUs8cBglYDPH5ri6aPJNGmrNMWJbh0ZerjwDrcQhuoc=3D
ARC-Authentication-Results: i=3D1; smtp.subspace.kernel.org; dkim=3Dpass (2=
048-bit key) header.d=3Dkernel.org header.i=3D@kernel.org header.b=3Daf3tEf=
4r; arc=3Dnone smtp.client-ip=3D10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A38DC433F1;
	Fri, 29 Mar 2024 22:29:55 +0000 (UTC)
DKIM-Signature: v=3D1; a=3Drsa-sha256; c=3Drelaxed/simple; d=3Dkernel.org;
	s=3Dk20201202; t=3D1711751395;
	bh=3DYclD2gFKAd0KYU/nqrMwp6tntz6Bp0xkpGNnD7iuj3c=3D;
	h=3DDate:From:To:Cc:Subject:In-Reply-To:References:From;
	b=3Daf3tEf4riCb4f2NQ149pjvDrIXXmmP43YUOkyHbXZ+M94QTqDI0JCGEF6C9SwDi2v
	 UbNo6lur4NhXefe9RSrYlvWkEgyygoEXlsnzAgBuwTthmMcxP2nKYOexYi7y8EYgAU
	 s+LYfSGZY1szJRSJJk68i3GvMqw/Vxj3slvg7t75/MisPpwS+jb6RoyLsnYv0RKoVL
	 12qu5ji4XYH50ruUZsUfcfxQseOwTzwtSilm9SNsMlGhgFPnOmb3sh5+EZ9kkw1axQ
	 GhY5mxcMFxbnq+OPRpafTOvZpCjxq7fMQ4RgncWl/e6+tXnFeaTluLTysE2h8/dy/H
	 aDL1nOLZRHWXA=3D=3D
Date: Fri, 29 Mar 2024 15:29:54 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 simon.horman@corigine.com, anthony.l.nguyen@intel.com, edumazet@google.com=
,
 pabeni@redhat.com, idosch@nvidia.com, przemyslaw.kitszel@intel.com,
 marcin.szycik@linux.intel.com
Subject: Re: [PATCH net-next 2/3] ethtool: Introduce max power support
Message-ID: <20240329152954.26a7ce75@kernel.org>
In-Reply-To: <20240329092321.16843-3-wojciech.drewek@intel.com>
References: <20240329092321.16843-1-wojciech.drewek@intel.com>
	<20240329092321.16843-3-wojciech.drewek@intel.com>
Precedence: bulk
X-Mailing-List: netdev@vger.kernel.org
List-Id: <netdev.vger.kernel.org>
List-Subscribe: <mailto:netdev+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:netdev+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=3D"US-ASCII"
Content-Transfer-Encoding: 7bit
Return-Path: netdev+bounces-83478-steffen.klassert=3Dsecunet.com@vger.kerne=
l.org
X-MS-Exchange-Organization-OriginalArrivalTime: 29 Mar 2024 22:30:12.5869
 (UTC)
X-MS-Exchange-Organization-Network-Message-Id: b874bb8e-c3ad-4cd8-d138-08dc=
503fcc9e
X-MS-Exchange-Organization-OriginalClientIPAddress: 62.96.220.36
X-MS-Exchange-Organization-OriginalServerIPAddress: 10.53.40.202
X-MS-Exchange-Organization-Cross-Premises-Headers-Processed: cas-essen-02.s=
ecunet.de
X-MS-Exchange-Organization-OrderedPrecisionLatencyInProgress: LSRV=3Dmbx-es=
sen-01.secunet.de:TOTAL-HUB=3D0.416|SMR=3D0.329(SMRDE=3D0.004|SMRC=3D0.325(=
SMRCL=3D0.104|X-SMRCR=3D0.325))|CAT=3D0.086(CATRESL=3D0.022
 (CATRESLP2R=3D0.018)|CATORES=3D0.058(CATRS=3D0.058(CATRS-Transport Rule
 Agent=3D0.001|CATRS-Index Routing Agent=3D0.056
 ))|CATORT=3D0.001(CATRT=3D0.001));2024-03-29T22:30:13.029Z
X-MS-Exchange-Forest-ArrivalHubServer: mbx-essen-01.secunet.de
X-MS-Exchange-Organization-AuthSource: cas-essen-02.secunet.de
X-MS-Exchange-Organization-AuthAs: Anonymous
X-MS-Exchange-Organization-FromEntityHeader: Internet
X-MS-Exchange-Organization-OriginalSize: 12132
X-MS-Exchange-Organization-HygienePolicy: Standard
X-MS-Exchange-Organization-MessageLatency: SRV=3Dcas-essen-02.secunet.de:TO=
TAL-FE=3D25.002|SMR=3D0.025(SMRPI=3D0.022(SMRPI-FrontendProxyAgent=3D0.022)=
)|SMS=3D0.002
X-MS-Exchange-Organization-Recipient-Limit-Verified: True
X-MS-Exchange-Organization-TotalRecipientCount: 1
X-MS-Exchange-Organization-Rules-Execution-History: 0b0cf904-14ac-4724-8bdf=
-482ee6223cf2%%%fd34672d-751c-45ae-a963-ed177fcabe23%%%d8080257-b0c3-47b4-b=
0db-23bc0c8ddb3c%%%95e591a2-5d7d-4afa-b1d0-7573d6c0a5d9%%%f7d0f6bc-4dcc-487=
6-8c5d-b3d6ddbb3d55%%%16355082-c50b-4214-9c7d-d39575f9f79b
X-MS-Exchange-Forest-RulesExecuted: mbx-essen-01
X-MS-Exchange-Organization-RulesExecuted: mbx-essen-01
X-MS-Exchange-Forest-IndexAgent-0: AQ0CZW4AAWoMAAAPAAADH4sIAAAAAAAEAK1YCXPb=
xhVe3odEyXKcZH
 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
 I8pmABJZTzCuEbA10aczJD6fpHnoH936Hah0kYl3HwIS8xLy9l6XWJ
 zwtNdocyCmpc5wanIvxBIfChQ9i+SEtFVpTRyIN6l+gVjcFzDQcIxR
 AwFIJmTOUk/E+aRBYQtZQLq3gBixfqdAlVo7VZKuexIl7KY9WgLnDm
 NC/nKtX7SoaQOVxdCTWC2BLLHx1bSenxAbMD5T3afnjUIoDTru+msU
 DyFLh75C6A1mxES5nMQ70V5k1liiKlhTDZeGYpah4xfsTOJ8m5JCF/
 YMunchUGy2ibKDNEM4zw6TCDhbMlFx4ouN+S+JK3M8f4RZopiG/SmB
 iZ0SlJ/ikVaSMModztFABGUuKDGGWBe4mRkSVxn7AXGqEvCJZ/Hxs4
 rGTDNyR/J4eW5PlIjTj/TzPyAQB5OYdARCUZt6pMNuSEZN6pqodyK4
 2k5fVJrWttdPRksMyzGZ32WcrnXAjgGvZpFTAKlj7KpwqUe8szjCkl
 +a3MLRzrZZTgcMeiEDmPOHxwHpUJH0bNDB9eWQLnyXTSRZHkirDbJH
 VwiKyMcnLKaR/PyNXSKMRF6tNGtUk49kliGvCpmtGHF0dw7HlmDP35
 +czC10mS4/InmOKdjnAA0zvPt4D/AsaXde/OJAAAAQrOAjw/eG1sIH
 ZlcnNpb249IjEuMCIgZW5jb2Rpbmc9InV0Zi0xNiI/Pg0KPEVtYWls
 U2V0Pg0KICA8VmVyc2lvbj4xNS4wLjAuMDwvVmVyc2lvbj4NCiAgPE
 VtYWlscz4NCiAgICA8RW1haWwgU3RhcnRJbmRleD0iMTE4MyI+DQog
 ICAgICA8RW1haWxTdHJpbmc+bWFyY2luLnN6eWNpa0BsaW51eC5pbn
 RlbC5jb208L0VtYWlsU3RyaW5nPg0KICAgIDwvRW1haWw+DQogICAg
 PEVtYWlsIFN0YXJ0SW5kZXg9IjEyNDkiPg0KICAgICAgPEVtYWlsU3
 RyaW5nPndvamNpZWNoLmRyZXdla0BpbnRlbC5jb208L0VtYWlsU3Ry
 aW5nPg0KICAgIDwvRW1haWw+DQogIDwvRW1haWxzPg0KPC9FbWFpbF
 NldD4BDIUHPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRm
 LTE2Ij8+DQo8Q29udGFjdFNldD4NCiAgPFZlcnNpb24+MTUuMC4wLj
 A8L1ZlcnNpb24+DQogIDxDb250YWN0cz4NCiAgICA8Q29udGFjdCBT
 dGFydEluZGV4PSIxMTY4Ij4NCiAgICAgIDxQZXJzb24gU3RhcnRJbm
 RleD0iMTE2OCI+DQogICAgICAgIDxQZXJzb25TdHJpbmc+TWFyY2lu
 PC9QZXJzb25TdHJpbmc+DQogICAgICA8L1BlcnNvbj4NCiAgICAgID
 xFbWFpbHM+DQogICAgICAgIDxFbWFpbCBTdGFydEluZGV4PSIxMTgz
 Ij4NCiAgICAgICAgICA8RW1haWxTdHJpbmc+bWFyY2luLnN6eWNpa0
 BsaW51eC5pbnRlbC5jb208L0VtYWlsU3RyaW5nPg0KICAgICAgICA8
 L0VtYWlsPg0KICAgICAgPC9FbWFpbHM+DQogICAgICA8Q29udGFjdF
 N0cmluZz5NYXJjaW4gU3p5Y2lrICZsdDttYXJjaW4uc3p5Y2lrQGxp
 bnV4LmludGVsLmNvbTwvQ29udGFjdFN0cmluZz4NCiAgICA8L0Nvbn
 RhY3Q+DQogICAgPENvbnRhY3QgU3RhcnRJbmRleD0iMTIzMiI+DQog
 ICAgICA8UGVyc29uIFN0YXJ0SW5kZXg9IjEyMzIiPg0KICAgICAgIC
 A8UGVyc29uU3RyaW5nPldvamNpZWNoIERyZXdlazwvUGVyc29uU3Ry
 aW5nPg0KICAgICAgPC9QZXJzb24+DQogICAgICA8RW1haWxzPg0KIC
 AgICAgICA8RW1haWwgU3RhcnRJbmRleD0iMTI0OSI+DQogICAgICAg
 ICAgPEVtYWlsU3RyaW5nPndvamNpZWNoLmRyZXdla0BpbnRlbC5jb2
 08L0VtYWlsU3RyaW5nPg0KICAgICAgICA8L0VtYWlsPg0KICAgICAg
 PC9FbWFpbHM+DQogICAgICA8Q29udGFjdFN0cmluZz5Xb2pjaWVjaC
 BEcmV3ZWsgJmx0O3dvamNpZWNoLmRyZXdla0BpbnRlbC5jb208L0Nv
 bnRhY3RTdHJpbmc+DQogICAgPC9Db250YWN0Pg0KICA8L0NvbnRhY3
 RzPg0KPC9Db250YWN0U2V0PgEOzwFSZXRyaWV2ZXJPcGVyYXRvciwx
 MCwyO1JldHJpZXZlck9wZXJhdG9yLDExLDM7UG9zdERvY1BhcnNlck
 9wZXJhdG9yLDEwLDE7UG9zdERvY1BhcnNlck9wZXJhdG9yLDExLDA7
 UG9zdFdvcmRCcmVha2VyRGlhZ25vc3RpY09wZXJhdG9yLDEwLDc7UG
 9zdFdvcmRCcmVha2VyRGlhZ25vc3RpY09wZXJhdG9yLDExLDA7VHJh
 bnNwb3J0V3JpdGVyUHJvZHVjZXIsMjAsMjg=3D
X-MS-Exchange-Forest-IndexAgent: 1 4643
X-MS-Exchange-Forest-EmailMessageHash: 10B105DC
X-MS-Exchange-Forest-Language: en
X-MS-Exchange-Organization-Processed-By-Journaling: Journal Agent

On Fri, 29 Mar 2024 10:23:20 +0100 Wojciech Drewek wrote:
> Some modules use nonstandard power levels. Adjust ethtool
> module implementation to support new attributes that will allow user
> to change maximum power.
>=20
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
>=20
> Add two new set attributes:
> ETHTOOL_A_MODULE_MAX_POWER_SET (used for get as well) - change
>   maximum power in the cage to the given value (milliwatts)
> ETHTOOL_A_MODULE_MAX_POWER_RESET - reset maximum power setting to the
>   default value
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  include/linux/ethtool.h              | 17 +++++--
>  include/uapi/linux/ethtool_netlink.h |  4 ++
>  net/ethtool/module.c                 | 74 ++++++++++++++++++++++++++--
>  net/ethtool/netlink.h                |  2 +-
>  4 files changed, 87 insertions(+), 10 deletions(-)
>=20
> diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
> index f3af6b31c9f1..74ed8997443a 100644
> --- a/include/linux/ethtool.h
> +++ b/include/linux/ethtool.h
> @@ -510,10 +510,18 @@ struct ethtool_module_eeprom {
>   * @policy: The power mode policy enforced by the host for the plug-in m=
odule.
>   * @mode: The operational power mode of the plug-in module. Should be fi=
lled by
>   *	device drivers on get operations.
> + * @min_pwr_allowed: minimum power allowed in the cage reported by devic=
e
> + * @max_pwr_allowed: maximum power allowed in the cage reported by devic=
e
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

> diff --git a/include/uapi/linux/ethtool_netlink.h b/include/uapi/linux/et=
htool_netlink.h
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
>  	const struct module_reply_data *data =3D MODULE_REPDATA(reply_base);
> +	u32 temp;

tmp ? temp sounds too much like temperature in context of power

>  static int
>  ethnl_set_module(struct ethnl_req_info *req_info, struct genl_info *info=
)
>  {
>  	struct ethtool_module_power_params power =3D {};
>  	struct ethtool_module_power_params power_new;
> -	const struct ethtool_ops *ops;
>  	struct net_device *dev =3D req_info->dev;
>  	struct nlattr **tb =3D info->attrs;
> +	const struct ethtool_ops *ops;
>  	int ret;
> +	bool mod;
> =20
>  	ops =3D dev->ethtool_ops;
> =20
> -	power_new.policy =3D nla_get_u8(tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY])=
;
>  	ret =3D ops->get_module_power_cfg(dev, &power, info->extack);
>  	if (ret < 0)
>  		return ret;
> =20
> -	if (power_new.policy =3D=3D power.policy)
> +	power_new.max_pwr_set =3D power.max_pwr_set;
> +	power_new.policy =3D power.policy;
> +
> +	ethnl_update_u32(&power_new.max_pwr_set,
> +			 tb[ETHTOOL_A_MODULE_MAX_POWER_SET], &mod);
> +	if (mod) {

I think we can use if (tb[ETHTOOL_A_MODULE_MAX_POWER_SET]) here
Less error prone for future additions.

> +		if (power_new.max_pwr_set > power.max_pwr_allowed) {
> +			NL_SET_ERR_MSG(info->extack, "Provided value is higher than maximum a=
llowed");

NL_SET_ERR_MSG_ATTR() to point at the bad attribute.

> +			return -EINVAL;

ERANGE?

> +		} else if (power_new.max_pwr_set < power.min_pwr_allowed) {
> +			NL_SET_ERR_MSG(info->extack, "Provided value is lower than minimum al=
lowed");
> +			return -EINVAL;
> +		}
> +	}
> +
> +	ethnl_update_policy(&power_new.policy,
> +			    tb[ETHTOOL_A_MODULE_POWER_MODE_POLICY], &mod);
> +	ethnl_update_u8(&power_new.max_pwr_reset,
> +			tb[ETHTOOL_A_MODULE_MAX_POWER_RESET], &mod);

I reckon reset should not be allowed if none of the max_pwr values=20
are set (i.e. most likely driver doesn't support the config)?

> +	if (!mod)
>  		return 0;
> =20
> +	if (power_new.max_pwr_reset && power_new.max_pwr_set) {

Mmm. How is that gonna work? The driver is going to set max_pwr_set
to what's currently configured. So the user is expected to send
ETHTOOL_A_MODULE_MAX_POWER_SET =3D 0
ETHTOOL_A_MODULE_MAX_POWER_RESET =3D 1
to reset?

Just:

	if (tb[ETHTOOL_A_MODULE_MAX_POWER_RESET] &&
	    tb[ETHTOOL_A_MODULE_MAX_POWER_SET])

And you can validate this before doing any real work.

> +		NL_SET_ERR_MSG(info->extack, "Maximum power set and reset cannot be us=
ed at the same time");
> +		return 0;
> +	}
> +
>  	ret =3D ops->set_module_power_cfg(dev, &power_new, info->extack);
>  	return ret < 0 ? ret : 1;
>  }
--=20
pw-bot: cr

