Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CC104A30C10
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 13:52:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7A9B481236;
	Tue, 11 Feb 2025 12:52:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m5tDf3he44d3; Tue, 11 Feb 2025 12:52:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B64EC81237
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739278343;
	bh=LCr8lXF/hbS3Bl/Vc5QzdufqxupTokIoSkungD9SWpM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LRfVVIKIFWsKvNsXox49Y5GuLQ3530RkqHc5mZAbEa0mte3Mqz3gtlZ2wcbireKTE
	 jtpt8vAv1QJ6Rl7xFeOyrdfjCRMxf5/2SbSpRRJbyEmszy+gGSY3d5rJLZSxjfjCAr
	 ivxrXUHx21lMRkYoCELQIlfj25NDWoWDMQe79d9IQBTMKi4K4QF6Hlw01pe/zB3yEG
	 9OvfhFxP5gkMa+Mj1ZuyVDWUa/f7wcW5qMTzL17RGZp2MFej6O2/ZzFj9S3mBSO591
	 AXUOfLgjg91NkhTjnq797TIq5kvjwb2D8hI52z4cE3ttKuXt2CQyUuv1sddtOWmU2o
	 3Q0TZpXf+l96w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B64EC81237;
	Tue, 11 Feb 2025 12:52:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2188A194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:52:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AC50400D2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:52:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q2N6B6rnPogO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 12:52:19 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::636; helo=mail-ej1-x636.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 130DD4111A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 130DD4111A
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 130DD4111A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:52:16 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-ab7c6fc35b3so321952166b.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 04:52:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739278335; x=1739883135;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LCr8lXF/hbS3Bl/Vc5QzdufqxupTokIoSkungD9SWpM=;
 b=eVyqedx49qNxxukJD0ZGXM+6vkvolicz/98YwmzL9YSE6bEvWFLCYikQeGmFwxzVLT
 p61x8aQZ9SGAhFzSEOi0mV2cUdiH+XR1Cutlbx9/TlAVh2/SONeHdmOfj7npNNtzuhzB
 UeGwao/ENnr1RD3Ru/FMt0juVR0FcI6BSUeVtslm5WPStC/evXNx52w5cvb6mcW2kKfj
 47OyHFpQBd+o/2D+kPqubNZB96adfD03ofZcJjEK2/fXIo+HROMr2dDb0L0+PKQhD9Yi
 ThlrwoecYcgHgoP7LlKygIFHiaB9Yf3TWTwxxTdehqub/QdglKZYz5a2juo2h6iUy0Tn
 uj/Q==
X-Gm-Message-State: AOJu0YxtIfGxyJOToo79F8ma6mPk9jdWE//rov/XDNOVbmDp7DCBipL9
 JdKM5smk6YO2xEkF6LbYCeJ3tnif6NjStqggYSaKgDZOrcV1pHSoQg2aWktDKIs=
X-Gm-Gg: ASbGncs9jA5/bw7+f85/XQqkzyZflVdl2le/LYVWVKKZMY+coNB0kqNgoC8O8Kqyo6B
 5Y674uzjoLibWOM9MgL/sL7wa3yvOxCRgY+FBh8u76z4gYFzZSXcm9b09e4EYduhvRBiO9yYFC6
 J9PuonK7HhHARD/7OHE0jXx2VtQnVT5TGcA2RbwsysqlpCWkBbcTkbCY59sll8PqVDbEDHH6+/j
 DvrJxi2+JLBIbjDJF0dEUh5byzjjjQVu0EtLKsflsIqhJHnkpWNg0EA2kedDHt3NuZ6VLTqXZxO
 +ch+EZM2mv2w9b0cGA==
X-Google-Smtp-Source: AGHT+IE4VyuPVp0UmYtC0pWJM7Vcx/DWM3Q0lMkR7wfSfq/0GBBnfO4yFhMT4NUzE/bzg6LlMtcFDQ==
X-Received: by 2002:a17:906:c109:b0:ab7:4262:686b with SMTP id
 a640c23a62f3a-ab7da4be58dmr352557666b.40.1739278334563; 
 Tue, 11 Feb 2025 04:52:14 -0800 (PST)
Received: from jiri-mlt ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-ab7b5d8d4a0sm508918466b.159.2025.02.11.04.52.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Feb 2025 04:52:14 -0800 (PST)
Date: Tue, 11 Feb 2025 13:52:07 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
 "horms@kernel.org" <horms@kernel.org>, "Polchlopek,
 Mateusz" <mateusz.polchlopek@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Message-ID: <qmjitflm2k3zo5yiym74c6okjg5skzhb46evfhn6qpzkwch3uc@epvkzeg37n3f>
References: <20250210135639.68674-1-jedrzej.jagielski@intel.com>
 <20250210135639.68674-3-jedrzej.jagielski@intel.com>
 <bxi2icjzf37njzl4q5euu6bbrvbfu2c557dksqtigtegxcnowo@yyfke6ocrtpf>
 <DS0PR11MB7785B1EF702ED5536D4B4CCBF0FD2@DS0PR11MB7785.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DS0PR11MB7785B1EF702ED5536D4B4CCBF0FD2@DS0PR11MB7785.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1739278335; x=1739883135;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LCr8lXF/hbS3Bl/Vc5QzdufqxupTokIoSkungD9SWpM=;
 b=RJcJrJ9xVQ4wLFG/9ViPvlDsURGiHQjpDA7WmrPZCNr5aT6Qs4pDQocDSEYoSDUtvJ
 qFXJr43Y41OOl2To9dkMqa9xDpiivupo2cEg4nCOIKcmdrXsHOTHpvN3Ez2E0Ov09+XC
 YP2JW/+PBg7NiSNgjrUCLSmZgLLHlXDiED3iy+uQbKRXTShKALTpD+jb9EG48cq8MrM8
 JZjwkBiFzJPrQx+RYrLxDt/85Ufu6roUnHi5VjFc5o6R6jNE0KwLnhGDLiv3vIUx3ACq
 gaco6ya1nUhEDcXAyRPimVb3wjQVDtjppcAl1bVklCXjoT0zIg7R7JtSsJyzpEPg4nhY
 q6AA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=RJcJrJ9x
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 02/13] ixgbe: add handler
 for devlink .info_get()
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

Tue, Feb 11, 2025 at 01:12:12PM +0100, jedrzej.jagielski@intel.com wrote:
>From: Jiri Pirko <jiri@resnulli.us> 
>Sent: Monday, February 10, 2025 5:26 PM
>>Mon, Feb 10, 2025 at 02:56:28PM +0100, jedrzej.jagielski@intel.com wrote:
>>
>>[...]
>>
>>>+enum ixgbe_devlink_version_type {
>>>+	IXGBE_DL_VERSION_FIXED,
>>>+	IXGBE_DL_VERSION_RUNNING,
>>>+};
>>>+
>>>+static int ixgbe_devlink_info_put(struct devlink_info_req *req,
>>>+				  enum ixgbe_devlink_version_type type,
>>>+				  const char *key, const char *value)
>>
>>I may be missing something, but what's the benefit of having this helper
>>instead of calling directly devlink_info_version_*_put()?
>
>ixgbe devlink .info_get() supports various adapters across ixgbe portfolio which
>have various sets of version types - some version types are not applicable
>for some of the adapters - so we want just to check if it's *not empty.*
>
>If so then we don't want to create such entry at all so avoid calling
>devlink_info_version_*_put() in this case.
>Putting value check prior each calling of devlink_info_version_*_put()
>would provide quite a code redundancy and would look not so good imho.
>
>Me and Przemek are not fully convinced by adding such additional
>layer of abstraction but we defineltly need this value check to not
>print empty type or get error and return from the function.
>
>Another solution would be to add such check to devlink function.

That sounds fine to me. Someone else may find this handy as well.


>
>>
>>
>>
>>>+{
>>>+	if (!*value)
>>>+		return 0;
>>>+
>>>+	switch (type) {
>>>+	case IXGBE_DL_VERSION_FIXED:
>>>+		return devlink_info_version_fixed_put(req, key, value);
>>>+	case IXGBE_DL_VERSION_RUNNING:
>>>+		return devlink_info_version_running_put(req, key, value);
>>>+	}
>>>+
>>>+	return 0;
>>>+}
>>>+
>>
>>[...]
>>
>>
>>>+static int ixgbe_devlink_info_get(struct devlink *devlink,
>>>+				  struct devlink_info_req *req,
>>>+				  struct netlink_ext_ack *extack)
>>>+{
>>>+	struct ixgbe_devlink_priv *devlink_private = devlink_priv(devlink);
>>>+	struct ixgbe_adapter *adapter = devlink_private->adapter;
>>>+	struct ixgbe_hw *hw = &adapter->hw;
>>>+	struct ixgbe_info_ctx *ctx;
>>>+	int err;
>>>+
>>>+	ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
>>>+	if (!ctx)
>>>+		return -ENOMEM;
>>>+
>>>+	ixgbe_info_get_dsn(adapter, ctx);
>>>+	err = devlink_info_serial_number_put(req, ctx->buf);
>>>+	if (err)
>>>+		goto free_ctx;
>>>+
>>>+	ixgbe_info_nvm_ver(adapter, ctx);
>>>+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>>>+				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
>>>+				     ctx->buf);
>>>+	if (err)
>>>+		goto free_ctx;
>>>+
>>>+	ixgbe_info_eetrack(adapter, ctx);
>>>+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
>>>+				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
>>>+				     ctx->buf);
>>>+	if (err)
>>>+		goto free_ctx;
>>>+
>>>+	err = ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
>>>+	if (err)
>>>+		goto free_ctx;
>>>+
>>>+	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_FIXED,
>>>+				     DEVLINK_INFO_VERSION_GENERIC_BOARD_ID,
>>>+				     ctx->buf);
>>>+free_ctx:
>>>+	kfree(ctx);
>>>+	return err;
>>>+}
>>>+
>>> static const struct devlink_ops ixgbe_devlink_ops = {
>>>+	.info_get = ixgbe_devlink_info_get,
>>> };
>>> 
>>> /**
>>>-- 
>>>2.31.1
>>>
>>>
