Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8DE774BB8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Aug 2023 22:54:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 92FE8408BE;
	Tue,  8 Aug 2023 20:54:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92FE8408BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691528074;
	bh=Z7sN79BA1GBpipx/Sx8eJurrGkoZI+Yt+p1IYIFUAaI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j0krxya5yxeun/Q8x0rxqFlrU19XaaoqH4juRj+yD1jIOG925m8fXiNdivX5b5OZ0
	 FCqUpFzd6lXN8y3njVQ4/HCkQ5NCTfx2ceSUUJ4hnNHrK2OZB/EtdTL6GBwrehs8wE
	 4g5pWR1dtrI9NQtemXO+p1xLF9UCRqwlY2ohCK6nJDKbQnS/FTVPgplqykkMOA9VmU
	 vCPB5AmmTuyzr5S/r9aqYMMGu56MrtnKOMSrRA/LhESSxhzXvLNZcGX/r9HlD0kIi/
	 az73xW9JEcdweCZncyVnsNj5zBli8mqHtUNIZ/ZPk4fzVdaWVEI/HDVEjob2AVDBnA
	 LsopYGDUThzIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sV26i7S4C7U9; Tue,  8 Aug 2023 20:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F4F540362;
	Tue,  8 Aug 2023 20:54:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F4F540362
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FFF71BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04ACD60B8E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:54:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04ACD60B8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ueeG1PEhIJub for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Aug 2023 20:54:16 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 585E060784
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Aug 2023 20:54:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 585E060784
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9FC8162C35;
 Tue,  8 Aug 2023 20:54:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D38BC433C7;
 Tue,  8 Aug 2023 20:54:13 +0000 (UTC)
Date: Tue, 8 Aug 2023 22:54:11 +0200
From: Simon Horman <horms@kernel.org>
To: Wenjun Wu <wenjun1.wu@intel.com>
Message-ID: <ZNKrc6xchj8Jkct+@vergenet.net>
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-6-wenjun1.wu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230808015734.1060525-6-wenjun1.wu@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691528055;
 bh=aaCGWt5PewNBgB1kC+KuCkVDdOigrAoZEpitBv3ac0Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rGhtmt+xJ2HkR09dH5RhI0OOXKccePel7ybv3A9/oy2XMGpDzjrwefHU7jr6IxQpk
 V97686VSd7Qj1IdDdzoDcpMuSayOLjhPQFDTJrmG07sTN0Fh9OGYRKZ/HTtwuDe1Bq
 zVqe43inuHWlYgq8gNyBq8mgaTrvqSGtfaS/gLJEmO5polkaB1Rp2ANF+fZfBRB2yu
 8e7H8ZrSCANhBPOOMEv/h9HJaWzbWVDNYBhkhTNzmk0WG4dzAjgcRsxf0Al89PUKZ4
 +cNcKh+R6Om+ILjyhyEkisJmNm0pXnyiHd/UzUG1+pwDI1q29ZsKgFGB/fU4j1zW+6
 39y9uhpPL5Spg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=rGhtmt+x
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] iavf: Add VIRTCHNL
 Opcodes Support for Queue bw Setting
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, qi.z.zhang@intel.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 08, 2023 at 09:57:34AM +0800, Wenjun Wu wrote:
> From: Jun Zhang <xuejun.zhang@intel.com>

...

> @@ -2471,6 +2687,16 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
>  		if (!v_retval)
>  			iavf_netdev_features_vlan_strip_set(netdev, false);
>  		break;
> +	case VIRTCHNL_OP_GET_QOS_CAPS:
> +		u16 len = struct_size(adapter->qos_caps, cap,
> +				      IAVF_MAX_QOS_TC_NUM);

Hi Jun Zhang and Wenju Wu,

clang-16 complains about this quite a lot.
I think it is because it wants the declaration of len - and thus
the rest of this case - inside a block ({}).

 .../iavf_virtchnl.c:2691:3: error: expected expression
                 u16 len = struct_size(adapter->qos_caps, cap,
                 ^
 .../iavf_virtchnl.c:2693:46: error: use of undeclared identifier 'len'
                 memcpy(adapter->qos_caps, msg, min(msglen, len));
                                                            ^
 .../iavf_virtchnl.c:2693:46: error: use of undeclared identifier 'len'

> +		memcpy(adapter->qos_caps, msg, min(msglen, len));
> +		break;
> +	case VIRTCHNL_OP_CONFIG_QUANTA:
> +		iavf_notify_queue_config_complete(adapter);
> +		break;
> +	case VIRTCHNL_OP_CONFIG_QUEUE_BW:
> +		break;
>  	default:
>  		if (adapter->current_op && (v_opcode != adapter->current_op))
>  			dev_warn(&adapter->pdev->dev, "Expected response %d from PF, received %d\n",
> -- 
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
