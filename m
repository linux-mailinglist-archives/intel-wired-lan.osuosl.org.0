Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8DC6D5F65
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Apr 2023 13:45:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C92081638;
	Tue,  4 Apr 2023 11:45:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C92081638
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680608709;
	bh=B6n5Yu3vtHVl7arFL2zP0Lt7drhwHaSSpuNRlpWd6CA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VUFYLYWFYGzSdb3opKwpAopJaefvCHI/G4eGZxsf4tR+2keM9apLdlW9xQc5/7k/a
	 u4024ajN8e1lGSwpFsvYqvf9XUDzqDU7+lT5EcmfF6n/lNJj0COvF/aC9CU1rBCqTV
	 J9toPbIWWzYodvKH4b+ERJGX5fnGLTwiLntS7TmSHy1hbRrbNjTwv8++Qi+LrnXlk6
	 r2CYZZp/VKm2sxomt6iF+B2kf5Nh1g3am9mLkPmGhO0oPGhUBRM5EqVIVNtLxaocW/
	 9xQiiLdbSOvloJqgB8xLHJKjoVcEw0QCYkJqcS9S43g1jEjZ2eIp0ZYHSLzaEpy3oe
	 ghvXt9dUGWIiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d180utNCslfO; Tue,  4 Apr 2023 11:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17AB780C12;
	Tue,  4 Apr 2023 11:45:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 17AB780C12
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 725621C2795
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:45:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5778260ADE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5778260ADE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v-7YRhuoD--9 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Apr 2023 11:45:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07CD1607A1
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 07CD1607A1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Apr 2023 11:45:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="339645424"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="339645424"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:45:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="663567401"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="663567401"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:44:59 -0700
Date: Tue, 4 Apr 2023 13:44:56 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <ZCwNuAOy7Okk66C0@localhost.localdomain>
References: <20230404072833.3676891-1-michal.swiatkowski@linux.intel.com>
 <20230404072833.3676891-5-michal.swiatkowski@linux.intel.com>
 <43a33d1a-3b04-86a1-b538-d906b517b7d0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <43a33d1a-3b04-86a1-b538-d906b517b7d0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680608702; x=1712144702;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vm1lwowvPFkAxTBEwsrasNh7c7SDr0vvVpU7N24XPVk=;
 b=KGtkokAOAHDTF+/yWQ7NcD+P6S+oxx2IcNnwBO74t5+OPE61ELdt7iQJ
 jgUNG2TORbGDU73B15XE4am/fiNL2yT7529UU2bpD8CsThg+/QFMbppe2
 VaYZ4Xv+nF/I9EwaJsGhgZEpQu477lzL7DQ+hIAJ6wsvxNaT+KwtBwNVh
 W6ybqKBAG65Gboxuu991QAUY8vcFbhSM1Ao2Jthniz+jU6D71BQUcKs1Y
 tpopqcOLLpt5H5OF53RDb+l0o4y+8xolRojtH52Oe7OVJh5UfPnGMeqK2
 8+djoMXcrTKyz2zSI2c9JYuaA9eGoHNUjhm4WwUyIQn9F/E6ak+NHnamw
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KGtkokAO
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/4] ice: use src VSI
 instead of src MAC in slow-path
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Apr 04, 2023 at 12:30:42PM +0200, Alexander Lobakin wrote:
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Date: Tue,  4 Apr 2023 09:28:33 +0200
> =

> > The use of a source  MAC to direct packets from the VF to the
> > corresponding port representor is only ok if there is only one
> > MAC on a VF. To support this functionality when the number
> > of MACs on a VF is greater, it is necessary to match a source
> > VSI instead of a source MAC.
> =

> [...]
> =

> > @@ -32,11 +31,9 @@
> >  	if=B7(!list)
> >  		return=B7-ENOMEM;
> >
> > -	list[0].type=B7=3D=B7ICE_MAC_OFOS;
> > -	ether_addr_copy(list[0].h_u.eth_hdr.src_addr,=B7mac);
> > -	eth_broadcast_addr(list[0].m_u.eth_hdr.src_addr);
> > +	ice_rule_add_src_vsi_metadata(&list[0]);
> =

> &list[0] =3D=3D list.
> =


Will do

> > -	rule_info.sw_act.flag=B7|=3D=B7ICE_FLTR_TX;
> > +	rule_info.sw_act.flag=B7=3D=B7ICE_FLTR_TX;
> >  	rule_info.sw_act.vsi_handle=B7=3D=B7ctrl_vsi->idx;
> =

> [...]
> =

> > @@ -269,10 +235,18 @@ static int ice_eswitch_setup_reprs(struct ice_pf =
*pf)
> >  			goto err;
> >  		}
> >  =

> > +		if (ice_eswitch_add_vf_sp_rule(pf, vf)) {
> > +			ice_fltr_add_mac_and_broadcast(vsi,
> > +						       vf->hw_lan_addr,
> =

> Fits into the previous line :p
>

Yeah, will move it.

> > +						       ICE_FWD_TO_VSI);
> > +			goto err;
> > +		}
> > +
> =

> [...]
> =

> > diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drive=
rs/net/ethernet/intel/ice/ice_protocol_type.h
> > index ed0ab8177c61..664e2f45e249 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > @@ -256,7 +256,9 @@ struct ice_nvgre_hdr {
> >   * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> >   *
> >   * Source VSI =3D Source VSI of packet loopbacked in switch (for egres=
s) (10b).
> > - *
> > + */
> > +#define ICE_MDID_SOURCE_VSI_MASK 0x3ff
> =

> GENMASK()?
>

Sorry, it should be there (Simon pointed it), but I forgot about
amending :( . Thanks for catching it.

> > +/*
> =

> A newline before this line maybe to improve readability a bit?
>

Will add

> >   * MDID 20
> >   * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> >   * |A|B|C|D|E|F|R|R|G|H|I|J|K|L|M|N|
> =

> [...]
> =

> > --- a/drivers/net/ethernet/intel/ice/ice_repr.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_repr.h
> > @@ -13,9 +13,8 @@ struct ice_repr {
> >  	struct net_device *netdev;
> >  	struct metadata_dst *dst;
> >  #ifdef CONFIG_ICE_SWITCHDEV
> > -	/* info about slow path MAC rule  */
> > -	struct ice_rule_query_data *mac_rule;
> > -	u8 rule_added;
> > +	/* info about slow path rule  */
> =

> Two spaces after 'rule' here :s
>

Will fix

> > +	struct ice_rule_query_data sp_rule;
> >  #endif
> >  };
> [...]
> =

> Thanks,
> Olek

Thanks for the review
Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
