Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4973A72AA62
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 10:46:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD7834041C;
	Sat, 10 Jun 2023 08:46:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD7834041C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686386798;
	bh=LP9j4nWzkWYK4/J5wBvpu+vYd3xg9fPImW9wIZKIUl0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=W6IviQhzZoSYoqlQbAko7Foi0jUttAMwY62Ckcci0AAb4GJhovqxeTrQpsj8Wtvaj
	 rdwwqlUXZ6cfQ30hRxojkvmEhu0aDRnmuQ6PpS86QvUUyb0mMeHaofEVRuiozh4HO5
	 YqA4q5P7JidlT6tF6TtTvtT6ShAphHl+mzjiTMz5fJ5qzMSo3+esvTn7oG4UwCSHoq
	 /+nWo/6nY+yriHZpFhuEyrO7aPEiye4UZPZnTPssVQI4U9paP+GOlYWjm7VDmchBX0
	 PoSEP1nsn59LJdoowYhexjdmGRwSoufS5C6Vps221HM/M2w+LAqgzMUwhRjiGEmUCa
	 YNl/bEOpjQTIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNzrvxbotiWW; Sat, 10 Jun 2023 08:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 93CDC40114;
	Sat, 10 Jun 2023 08:46:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93CDC40114
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B2F311BF35E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 08:46:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 97AA660B71
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 08:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 97AA660B71
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L8o0UyMkwPsF for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 08:46:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28D6D60AFB
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28D6D60AFB
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 08:46:28 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-978863fb00fso455484766b.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 01:46:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686386786; x=1688978786;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=GSF/kGcyY2T2khZJqq+hCJQP4iKE4wxL6SaGITXlZUU=;
 b=hgf4QAPhp717FXHlcF0LNSuiff0cuOjv66UOQkvqcjW1bIkYBi6A9niJvLK9osbiET
 bc8ghQCpJPUfTsaVtPyZHRiFO2TzvEQkdANnH+PhLWe0mT10Sz3KjRdoW7KpWmDJdrXN
 d5FoZymXR/Lke5IRbnMgFsBQ3OKH1RkzRSnHa603S+3ZSzkVkkt2qRUPZ4T9Zwd37dkX
 aWOJ6/ZZpHUAErMD43LAG14TYsbgQRcxPBlw729kHjvYZtyYlcL/d10hD7OXyeK+kWkt
 YTyJnZK27yzzir1jXqxDWIojdOII5ZUVVWXUxxg+M19b5z9n0PHpnQtUJTJpcbo1dD7a
 xKEw==
X-Gm-Message-State: AC+VfDy3t0pnaeRWkofEw2dm8PY6nv3+WUj/3XsTXwCIhFhHRn4qwOXt
 Mhj6ZfPTGfvB4oav0nJ/UgjwAw==
X-Google-Smtp-Source: ACHHUZ5LHz1bCgQJ2R7YL5ObCo6ELGPyZh7ubwZwZFv3S+EJf5VUf5LWqRdui3wAKHpRAI/qsA1fWg==
X-Received: by 2002:a17:906:ee85:b0:966:5a6c:752d with SMTP id
 wt5-20020a170906ee8500b009665a6c752dmr4041983ejb.20.1686386786589; 
 Sat, 10 Jun 2023 01:46:26 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 lj20-20020a170906f9d400b0094f23480619sm2333994ejb.172.2023.06.10.01.46.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 01:46:25 -0700 (PDT)
Date: Sat, 10 Jun 2023 10:46:24 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIQ4YCX+1FbZHpRQ@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-8-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-8-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686386786; x=1688978786; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=GSF/kGcyY2T2khZJqq+hCJQP4iKE4wxL6SaGITXlZUU=;
 b=vPqW/4cgWBMZqvNav8/FBRdZ6lhCUBgsIM8pQ5Gg3GquE2/TYesv4Waxzc/3x+dILw
 TWNvQvs+aURb9biLk02QrXJhyIAC/6m0vL+ZxuEkNMgQSO0/pRGmTGvdVj05VYFN887A
 wYEtbFOZQB+7kMqy/rlBYfXhDsh7ECy4sqhtp7R7WlZccZdrym7KECuHS51Zz2QpH2ON
 5oRp/6dRYseCmzhm8plYETPrnr+Z1rBEXj9QKgbH0H+HMb1gGtQ0V8xxq5t0rD8STIFE
 HpC/grAuC3vzf0WQ9QkzNejFkFrSSAwormnz2+WGGx2DRmUoeZGZIMdIeLDXOR7Djkv7
 msgQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=vPqW/4cg
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 07/10] ice: add admin commands
 to access cgu configuration
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 09, 2023 at 02:18:50PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Add firmware admin command to access clock generation unit
>configuration, it is required to enable Extended PTP and SyncE features
>in the driver.

Empty line here perhaps?


>Add definitions of possible hardware variations of input and output pins
>related to clock generation unit and functions to access the data.
>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

I just skimmed over this, not really give it much of a time. Couple of
nits:


>+
>+#define MAX_NETLIST_SIZE	10

Prefix perhaps?

[...]


>+/**
>+ * convert_s48_to_s64 - convert 48 bit value to 64 bit value
>+ * @signed_48: signed 64 bit variable storing signed 48 bit value
>+ *
>+ * Convert signed 48 bit value to its 64 bit representation.
>+ *
>+ * Return: signed 64 bit representation of signed 48 bit value.
>+ */
>+static inline

Never use "inline" in a c file.


>+s64 convert_s48_to_s64(s64 signed_48)
>+{
>+	const s64 MASK_SIGN_BITS = GENMASK_ULL(63, 48);

variable with capital letters? Not nice. Define? You have that multiple
times in the patch.


>+	const s64 SIGN_BIT_47 = BIT_ULL(47);
>+
>+	return ((signed_48 & SIGN_BIT_47) ? (s64)(MASK_SIGN_BITS | signed_48)

Pointless cast, isn't it?

You don't need () around "signed_48 & SIGN_BIT_47"


>+		: signed_48);

Return is not a function. Drop the outer "()"s.


The whole fuction can look like:
static s64 convert_s48_to_s64(s64 signed_48)
{
	return signed_48 & BIT_ULL(47) ? signed_48 | GENMASK_ULL(63, 48) :
					 signed_48;
}

Nicer?


[...]



>+int ice_get_pf_c827_idx(struct ice_hw *hw, u8 *idx)
>+{
>+	struct ice_aqc_get_link_topo cmd;
>+	u8 node_part_number;
>+	u16 node_handle;
>+	int status;
>+	u8 ctx;
>+
>+	if (hw->mac_type != ICE_MAC_E810)
>+		return -ENODEV;
>+
>+	if (hw->device_id != ICE_DEV_ID_E810C_QSFP) {
>+		*idx = C827_0;
>+		return 0;
>+	}
>+
>+	memset(&cmd, 0, sizeof(cmd));
>+
>+	ctx = ICE_AQC_LINK_TOPO_NODE_TYPE_PHY << ICE_AQC_LINK_TOPO_NODE_TYPE_S;
>+	ctx |= ICE_AQC_LINK_TOPO_NODE_CTX_PORT << ICE_AQC_LINK_TOPO_NODE_CTX_S;
>+	cmd.addr.topo_params.node_type_ctx = ctx;
>+	cmd.addr.topo_params.index = 0;

You zeroed the struct 4 lines above...


>+
>+	status = ice_aq_get_netlist_node(hw, &cmd, &node_part_number,
>+					 &node_handle);
>+	if (status || node_part_number != ICE_ACQ_GET_LINK_TOPO_NODE_NR_C827)
>+		return -ENOENT;
>+
>+	if (node_handle == E810C_QSFP_C827_0_HANDLE)
>+		*idx = C827_0;
>+	else if (node_handle == E810C_QSFP_C827_1_HANDLE)
>+		*idx = C827_1;
>+	else
>+		return -EIO;
>+
>+	return 0;
>+}
>+

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
