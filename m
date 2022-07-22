Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7ABC57DA42
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Jul 2022 08:28:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6BE5E41858;
	Fri, 22 Jul 2022 06:28:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6BE5E41858
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658471310;
	bh=Vc4MVaZGd9FzxN8UZBr1QVwrUhrrezP+80fdr6wqUyU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nie1eEmqWXM7z0xY2EhEi6xBetiRe1KsvIjD3bqr9bYvm7N96WHjb1x+yBw1PA5f+
	 dVu7UsnPQVC1ZQ0qMpnaqJLefYLNOua46jbV3q5agGsfDgpuGrIH70fwwfGzonzfYv
	 GkUiVdcN1M0dqNnziUcHyYqrrZ5sRTDKClhw1QxX9lgTKazs7lPv9T/MSOV0hMQ98K
	 WbzfNkVRJnlRu326PNMC4u8F6m9CRWS2RXq/pWaBNdDmy8pO4dI0L6laBW0KIr8OKX
	 pgogjDGKu2Wr1JM2OVo43dFRSO6nK4nzmeRdUfYwdWNIk9UeHFnFK/74Akm6otCqOi
	 solPIjwexxdbw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cv0IVDoWlEyg; Fri, 22 Jul 2022 06:28:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A17E04054A;
	Fri, 22 Jul 2022 06:28:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A17E04054A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D87C1BF855
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 06:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16A18847CB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 06:26:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16A18847CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ey9igvOP2vt2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Jul 2022 06:26:13 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E6BA847C8
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E6BA847C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Jul 2022 06:26:12 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id bp15so6922337ejb.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 23:26:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yMVE49QTpYIAzKMre5/nLQ7uVcVNklEmnBRfrBYsHL0=;
 b=jEBPHCq3nUB6jmWINg6fDLp/DIAnS6E8cr+7Boxru4sOw2y/uxqxdhcpVSFO0uPdij
 QBd4fBW6Dcch3AdLtH/xXEXUrBmneAFA1vlhAvpYSDyaK5kGTsak9RZ4YUv+76SQsPEp
 umNL3l7ecTJgpK/YoLVdRRxwEoCAnz+nmfbITaSP0MmS2+XHd33r1CFZnxl3pLPQwQb2
 LqNjpB06n27XZKQbBx2bbQzXHAVQ/ktksbFFC43WGLUvmn+MlQWukR+rW2xiUiOs/A0r
 f6ziuMLkUIVkcGDoKRYUUR8PglHddW8EuB97zA+vP2ghPHSYRlYUgorKtTxhvGZ7SItf
 QdAA==
X-Gm-Message-State: AJIora/A07NUPBMeWolaEQZFJ5i7ZsZTS3bSgGvBpQltUHhPVzsa+wq+
 MTTgfy/Xwk4win5/A+lyoUPX5Q==
X-Google-Smtp-Source: AGRyM1srQgoGRk2mHXtOr5D80qB898XHyn5r/b2frEFFaVuftb9wpJV5LXYyuy6tYPL8DU0b5fc3Pw==
X-Received: by 2002:a17:907:94cf:b0:72f:1c2a:d475 with SMTP id
 dn15-20020a17090794cf00b0072f1c2ad475mr1917361ejc.237.1658471171023; 
 Thu, 21 Jul 2022 23:26:11 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 g22-20020a17090670d600b006f3ef214e27sm1633362ejk.141.2022.07.21.23.26.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 23:26:10 -0700 (PDT)
Date: Fri, 22 Jul 2022 08:26:09 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <YtpDAQS+eQI9C+LV@nanopsycho>
References: <20220721211451.2475600-1-jacob.e.keller@intel.com>
 <20220721211451.2475600-2-jacob.e.keller@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220721211451.2475600-2-jacob.e.keller@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yMVE49QTpYIAzKMre5/nLQ7uVcVNklEmnBRfrBYsHL0=;
 b=Clw+vWYWK9cODwTMjVZuKWbwl+iTUfN2dQCmUX6jPG5IpTaJuAQYig9hApmoPqUrgn
 aXkFaH5E1hIrqovdcfGOBkh5pgrJqhgNjL0Z21dKfmAZCmiqvxKJZb4KKCGDj6TR2VmL
 riOblQnCo+Z10A5hLUbz5zSoxcm7jbIn3CSZfkKngShEMbe9PLZf/ORgJkRv6mHAn35L
 eyM6mOCvL1H0jNszMqYPJ9sTSni8TDf6VtFSISInmQ9rYxobuHKJ7drBJSYmchmZ8qab
 0dtIMik9KH6L/a8c0+8BGuiYzowe3f0fJla090nt5jMQBqxlFMe5pB0Rp4E7hE1JSTbj
 HIIw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=Clw+vWYW
Subject: Re: [Intel-wired-lan] [net-next v2 1/2] devlink: add dry run
 attribute to flash update
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 David Ahern <dsahern@kernel.org>, linux-doc@vger.kernel.org,
 Stephen Hemminger <stephen@networkplumber.org>,
 Eric Dumazet <edumazet@google.com>, Jiri Pirko <jiri@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Jul 21, 2022 at 11:14:46PM CEST, jacob.e.keller@intel.com wrote:
>Users use the devlink flash interface to request a device driver program or
>update the device flash chip. In some cases, a user (or script) may want to
>verify that a given flash update command is supported without actually
>committing to immediately updating the device. For example, a system
>administrator may want to validate that a particular flash binary image
>will be accepted by the device, or simply validate a command before finally
>committing to it.
>
>The current flash update interface lacks a method to support such a dry
>run. Add a new DEVLINK_ATTR_DRY_RUN attribute which shall be used by a
>devlink command to indicate that a request is a dry run which should not
>perform device configuration. Instead, the command should report whether
>the command or configuration request is valid.
>
>While we can validate the initial arguments of the devlink command, a
>proper dry run must be processed by the device driver. This is required
>because only the driver can perform validation of the flash binary file.
>
>Add a new dry_run parameter to the devlink_flash_update_params struct,
>along with the associated bit to indicate if a driver supports verifying a
>dry run.
>
>We always check the dry run attribute last in order to allow as much
>verification of other parameters as possible. For example, even if a driver
>does not support the dry_run option, we can still validate the other
>optional parameters such as the overwrite_mask and per-component update
>name.
>
>Document that userspace should take care when issuing a dry run to older
>kernels, as the flash update command is not strictly verified. Thus,
>unknown attributes will be ignored and this could cause a request for a dry
>run to perform an actual update. We can't fix old kernels to verify unknown
>attributes, but userspace can check the maximum attribute and reject the
>dry run request if it is not supported by the kernel.
>
>Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>---
>
>Changes since v1:
>* Add kernel doc comments to devlink_flash_update_params
>* Reduce indentation by using nla_get_flag
>
> .../networking/devlink/devlink-flash.rst      | 23 +++++++++++++++++++
> include/net/devlink.h                         |  4 ++++
> include/uapi/linux/devlink.h                  |  8 +++++++
> net/core/devlink.c                            | 17 +++++++++++++-
> 4 files changed, 51 insertions(+), 1 deletion(-)
>
>diff --git a/Documentation/networking/devlink/devlink-flash.rst b/Documentation/networking/devlink/devlink-flash.rst
>index 603e732f00cc..1dc373229a54 100644
>--- a/Documentation/networking/devlink/devlink-flash.rst
>+++ b/Documentation/networking/devlink/devlink-flash.rst
>@@ -44,6 +44,29 @@ preserved across the update. A device may not support every combination and
> the driver for such a device must reject any combination which cannot be
> faithfully implemented.
> 
>+Dry run
>+=======
>+
>+Users can request a "dry run" of a flash update by adding the
>+``DEVLINK_ATTR_DRY_RUN`` attribute to the ``DEVLINK_CMD_FLASH_UPDATE``
>+command. If the attribute is present, the kernel will only verify that the
>+provided command is valid. During a dry run, an update is not performed.
>+
>+If supported by the driver, the flash image contents are also validated and
>+the driver may indicate whether the file is a valid flash image for the
>+device.
>+
>+.. code:: shell
>+
>+   $ devlink dev flash pci/0000:af:00.0 file image.bin dry-run
>+   Validating flash binary
>+
>+Note that user space should take care when adding this attribute. Older
>+kernels which do not recognize the attribute may accept the command with an
>+unknown attribute. This could lead to a request for a dry run which performs
>+an unexpected update. To avoid this, user space should check the policy dump
>+and verify that the attribute is recognized before adding it to the command.
>+
> Firmware Loading
> ================
> 
>diff --git a/include/net/devlink.h b/include/net/devlink.h
>index 780744b550b8..47b86ccb85b0 100644
>--- a/include/net/devlink.h
>+++ b/include/net/devlink.h
>@@ -613,6 +613,8 @@ enum devlink_param_generic_id {
>  * struct devlink_flash_update_params - Flash Update parameters
>  * @fw: pointer to the firmware data to update from
>  * @component: the flash component to update
>+ * @overwrite_mask: what sections of flash can be overwritten

Well, strictly speaking, this is not related to this patch and should be
done in a separate one. But hey, it's a comment, so I guess noone really
cares.


>+ * @dry_run: if true, do not actually update the flash
>  *
>  * With the exception of fw, drivers must opt-in to parameters by
>  * setting the appropriate bit in the supported_flash_update_params field in
>@@ -622,10 +624,12 @@ struct devlink_flash_update_params {
> 	const struct firmware *fw;
> 	const char *component;
> 	u32 overwrite_mask;
>+	bool dry_run;
> };
> 
> #define DEVLINK_SUPPORT_FLASH_UPDATE_COMPONENT		BIT(0)
> #define DEVLINK_SUPPORT_FLASH_UPDATE_OVERWRITE_MASK	BIT(1)
>+#define DEVLINK_SUPPORT_FLASH_UPDATE_DRY_RUN		BIT(2)
> 
> struct devlink_region;
> struct devlink_info_req;
>diff --git a/include/uapi/linux/devlink.h b/include/uapi/linux/devlink.h
>index b3d40a5d72ff..e24a5a808a12 100644
>--- a/include/uapi/linux/devlink.h
>+++ b/include/uapi/linux/devlink.h
>@@ -576,6 +576,14 @@ enum devlink_attr {
> 	DEVLINK_ATTR_LINECARD_TYPE,		/* string */
> 	DEVLINK_ATTR_LINECARD_SUPPORTED_TYPES,	/* nested */
> 
>+	/* Before adding this attribute to a command, user space should check
>+	 * the policy dump and verify the kernel recognizes the attribute.
>+	 * Otherwise older kernels which do not recognize the attribute may
>+	 * silently accept the unknown attribute while not actually performing
>+	 * a dry run.
>+	 */
>+	DEVLINK_ATTR_DRY_RUN,			/* flag */
>+
> 	/* add new attributes above here, update the policy in devlink.c */
> 
> 	__DEVLINK_ATTR_MAX,
>diff --git a/net/core/devlink.c b/net/core/devlink.c
>index 98d79feeb3dc..1cff636c9b2b 100644
>--- a/net/core/devlink.c
>+++ b/net/core/devlink.c
>@@ -4743,7 +4743,8 @@ EXPORT_SYMBOL_GPL(devlink_flash_update_timeout_notify);
> static int devlink_nl_cmd_flash_update(struct sk_buff *skb,
> 				       struct genl_info *info)
> {
>-	struct nlattr *nla_component, *nla_overwrite_mask, *nla_file_name;
>+	struct nlattr *nla_component, *nla_overwrite_mask, *nla_file_name,
>+		      *nla_dry_run;
> 	struct devlink_flash_update_params params = {};
> 	struct devlink *devlink = info->user_ptr[0];
> 	const char *file_name;
>@@ -4789,6 +4790,19 @@ static int devlink_nl_cmd_flash_update(struct sk_buff *skb,
> 		return ret;
> 	}
> 
>+	/* Always check dry run last, in order to allow verification of other
>+	 * parameter support even if the particular driver does not yet
>+	 * support a full dry-run
>+	 */
>+	params.dry_run = nla_get_flag(info->attrs[DEVLINK_ATTR_DRY_RUN]);
>+	if (params.dry_run &&
>+	    !(supported_params & DEVLINK_SUPPORT_FLASH_UPDATE_DRY_RUN)) {
>+		NL_SET_ERR_MSG_ATTR(info->extack, nla_dry_run,
>+				    "flash update is supported, but dry run is not supported for this device");
>+		release_firmware(params.fw);
>+		return -EOPNOTSUPP;
>+	}
>+
> 	devlink_flash_update_begin_notify(devlink);
> 	ret = devlink->ops->flash_update(devlink, &params, info->extack);
> 	devlink_flash_update_end_notify(devlink);
>@@ -9004,6 +9018,7 @@ static const struct nla_policy devlink_nl_policy[DEVLINK_ATTR_MAX + 1] = {
> 	[DEVLINK_ATTR_RATE_PARENT_NODE_NAME] = { .type = NLA_NUL_STRING },
> 	[DEVLINK_ATTR_LINECARD_INDEX] = { .type = NLA_U32 },
> 	[DEVLINK_ATTR_LINECARD_TYPE] = { .type = NLA_NUL_STRING },
>+	[DEVLINK_ATTR_DRY_RUN] = { .type = NLA_FLAG },
> };
> 
> static const struct genl_small_ops devlink_nl_ops[] = {
>-- 
>2.35.1.456.ga9c7032d4631
>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
