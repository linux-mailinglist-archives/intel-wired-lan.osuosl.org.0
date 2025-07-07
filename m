Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AECFDAFAFDF
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 11:37:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0368D60BA6;
	Mon,  7 Jul 2025 09:37:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vje0IVgtiE34; Mon,  7 Jul 2025 09:37:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4E53760DD9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751881026;
	bh=+IYXLSws+f4RgjKXnp4KasFBt/Ef7wXu9jPFGko+4cc=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6J0MoV0k0XCXXVbv5pgLVlT3tpu+AGguLDjG87I1owGDtO9S40guxnRCESOWbcMYG
	 tDLJ1Kq69aCAXXJDfR9E79DbRtCeqFGaS78Q+RqLyfVfQUR9kz12fGMzP8TO9vel6C
	 3yO2A2eYXCH2G7L5zRc5CnIT5+kCgVPmeFFsiq7ruMZZMIgADe3M9g38TFwqu8bTKP
	 sLwyPg1WJDukllGWsePONNEsB1Jzj6F9yDj8M2E3cJy8j16xFyaWBgyTjEDj5+51TY
	 WBK9XDL7pz8xZ9lpHMM1bPS9a3I6X4BJPw2T+faapbDfD/syG4Fh3HuEsVAoXDrx8j
	 enOHDG9KrLJpA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E53760DD9;
	Mon,  7 Jul 2025 09:37:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7310B12E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5970181E63
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:37:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8XI5N7mXaiKR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 09:37:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E90881E60
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E90881E60
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E90881E60
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:37:01 +0000 (UTC)
Received: from [192.168.44.144] (unknown [185.238.219.24])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id B695B61E647AC;
 Mon, 07 Jul 2025 11:36:38 +0200 (CEST)
Message-ID: <667b6c18-76d2-4ea7-9133-b857ffb05795@molgen.mpg.de>
Date: Mon, 7 Jul 2025 11:36:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, dhowells@redhat.com, David.Kaplan@amd.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
References: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] devlink: allow driver
 to freely name interfaces
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

Dear Jedrzej,


Thank you for your patch.


Am 07.07.25 um 10:58 schrieb Jedrzej Jagielski:
> Currently when adding devlink port it is prohibited to let
> a driver name an interface on its own. In some scenarios
> it would not be preferable to provide such limitation,
> eg some compatibility purposes.

Re-flowing for 72 characters per line would save one line.

> Add flag skip_phys_port_name_get to devlink_port_attrs struct
> which indicates if devlink should not alter name of interface.
> 
> Suggested-by: Jiri Pirko <jiri@resnulli.us>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
> v2: add skip_phys_port_name_get flag to skip changing if name
> ---
>   include/net/devlink.h | 7 ++++++-
>   net/devlink/port.c    | 3 +++
>   2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/include/net/devlink.h b/include/net/devlink.h
> index 0091f23a40f7..414ae25de897 100644
> --- a/include/net/devlink.h
> +++ b/include/net/devlink.h
> @@ -78,6 +78,7 @@ struct devlink_port_pci_sf_attrs {
>    * @flavour: flavour of the port
>    * @split: indicates if this is split port
>    * @splittable: indicates if the port can be split.
> + * @skip_phys_port_name_get: if set devlink doesn't alter interface name
>    * @lanes: maximum number of lanes the port supports. 0 value is not passed to netlink.
>    * @switch_id: if the port is part of switch, this is buffer with ID, otherwise this is NULL
>    * @phys: physical port attributes
> @@ -87,7 +88,11 @@ struct devlink_port_pci_sf_attrs {
>    */
>   struct devlink_port_attrs {
>   	u8 split:1,
> -	   splittable:1;
> +	   splittable:1,
> +	   skip_phys_port_name_get:1; /* This is for compatibility only,
> +				       * newly added driver/port instance
> +				       * should never set this.
> +				       */
>   	u32 lanes;
>   	enum devlink_port_flavour flavour;
>   	struct netdev_phys_item_id switch_id;
> diff --git a/net/devlink/port.c b/net/devlink/port.c
> index 939081a0e615..bf52c8a57992 100644
> --- a/net/devlink/port.c
> +++ b/net/devlink/port.c
> @@ -1522,6 +1522,9 @@ static int __devlink_port_phys_port_name_get(struct devlink_port *devlink_port,
>   	if (!devlink_port->attrs_set)
>   		return -EOPNOTSUPP;
>   
> +	if (devlink_port->attrs.skip_phys_port_name_get)
> +		return 0;
> +
>   	switch (attrs->flavour) {
>   	case DEVLINK_PORT_FLAVOUR_PHYSICAL:
>   		if (devlink_port->linecard)

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
