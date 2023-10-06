Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C216C7BB7C9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 14:35:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5170661233;
	Fri,  6 Oct 2023 12:35:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5170661233
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696595741;
	bh=z6MzDCcUc8uSByYOfMj1Jnxo2+iMAK/gH/Oh/su/Vxo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WQA5roYGnRQ+Ca3t5pt8xXwrMVnUgZOK9ptFGwj9uyI0OFTJGoqRS5JZLX80/1+FE
	 cNqlpzsRx/QrDjgS45bgEV+/3khY0lPM3HiBP94vmDz/JCgQtH8pOuJzPmEs8KN2+4
	 zWLhSAppALoO6t4c22vsUrpIUIOa2fj/V3Yw2X6kEBB8TFWgLO4MocfrTK5iqR64O/
	 namPX5U64uY596nLuyhOLGCUag0ezzl6D+ZzEkPJcZlmn1y6iglBfWn269cWKZcPmK
	 2xjbvmFg9RmQ0/bEvEI207wki6UlPubQjlaTvp8IPF+5GuM5DQIfZZAp3j3XeEopXO
	 2P07pqr48XORw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S4MEzQWxY28j; Fri,  6 Oct 2023 12:35:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE7F161221;
	Fri,  6 Oct 2023 12:35:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE7F161221
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8F9351BF2FF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 71ABD41753
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 71ABD41753
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1aA4WcE_XM0I for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 12:35:32 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4A55B41752
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 12:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A55B41752
Received: by mail-ej1-x62f.google.com with SMTP id
 a640c23a62f3a-99c3c8adb27so359835666b.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 06 Oct 2023 05:35:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696595730; x=1697200530;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OPJcT5r5NqW3rXXeioqjT7vInGqN3ma7GJ/PMepM5+s=;
 b=g8LIUw3vRvdtQeiouFgCVxyFxtbdCDbhDOX5QTaawo59P0Q9sOdNdsljBjkIkvryMC
 Rlqa8oH4cDYd8RkQkMsyN15aUtJ1CA5JliBjfZc/iYSpoaqC1bTuWerGu083ne02jakn
 +EIdbScQZcOn9YO7ZnGonMMRdsDw+Ggq+zFibr+t5Wpxt1MOCxWsiwt1YsOM4c12QmKQ
 1VyjcbJBIuybURNfmTeJ6tWxyJJXk2J3foExZpZRJTMhpmXUiOAJHG5mbyJGHGGSdXcg
 c5yJ7pnfEKcDH/aLNnbtprW5DsBHvrQ7k+ChXM+59adboSYqlJXK1SP2rzX4NpH+9f/9
 nuFg==
X-Gm-Message-State: AOJu0Yw3keu0OS0FWL68F/ZSJCAphZ99T7StdL2s2rkyn+qG5BBEbMh1
 8f+BKHzSPfaCRsPbf4gW7obrhw==
X-Google-Smtp-Source: AGHT+IFXPSHOjrPnY2a/T+VhRBRqsxhIpMZ12KyvGwoTWS50mT/cmbXVGJWeZ/RIv5+kUbCFiUcCWw==
X-Received: by 2002:a17:906:1ba1:b0:9ae:5fdc:aee8 with SMTP id
 r1-20020a1709061ba100b009ae5fdcaee8mr7472326ejg.53.1696595729858; 
 Fri, 06 Oct 2023 05:35:29 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 qb40-20020a1709077ea800b009b9af27d98csm1391700ejc.132.2023.10.06.05.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Oct 2023 05:35:28 -0700 (PDT)
Date: Fri, 6 Oct 2023 14:35:25 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZR//DY6xMPi1AQ5i@nanopsycho>
References: <20231006114101.1608796-1-arkadiusz.kubalewski@intel.com>
 <20231006114101.1608796-6-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006114101.1608796-6-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1696595730; x=1697200530;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=OPJcT5r5NqW3rXXeioqjT7vInGqN3ma7GJ/PMepM5+s=;
 b=MkD7rsjAGTLDS0hEApYocRAwXvjU4UpGDQrtp2rO47itQ6WxxMDIT7iabOhQbJCy0c
 sclnz6HfvbmEji0moZgaFelJF8lIpRoz9JsAEeetdvNtaWIUDXHKHQ2T79aMP+RnZdkK
 wBYMxfqsIrsMjXgbHzKTo8vPZx8hJYG3Z4dkvUR0l6G5gLpMmYhu1EhdhFsoblpn9ABC
 N8feQqFb5DYL9m3assQIaCR/8PbzOJK4PxeOK58pfFHBW5Zq5aQxmChuufapmArNIUZK
 HLa4XloilsugukQ9/vgCF33gnwk+BiQDC71Y2ApW5Tg8G7H7q6xOp6tJvw3pSIkTvFkw
 WH7g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=MkD7rsjA
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 5/5] dpll: netlink/core:
 change pin frequency set behavior
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
Cc: vadim.fedorenko@linux.dev, corbet@lwn.net, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Oct 06, 2023 at 01:41:01PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Align the aproach of pin frequency set behavior with the approach
>introduced with pin phase adjust set.
>Fail the request if any of devices did not registered the callback ops.
>If callback op on any pin's registered device fails, return error and
>rollback the value to previous one.
>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>---
> drivers/dpll/dpll_netlink.c | 50 +++++++++++++++++++++++++++++--------
> 1 file changed, 40 insertions(+), 10 deletions(-)
>
>diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>index 97319a9e4667..8e5fea74aec1 100644
>--- a/drivers/dpll/dpll_netlink.c
>+++ b/drivers/dpll/dpll_netlink.c
>@@ -615,30 +615,60 @@ static int
> dpll_pin_freq_set(struct dpll_pin *pin, struct nlattr *a,
> 		  struct netlink_ext_ack *extack)
> {
>-	u64 freq = nla_get_u64(a);
>-	struct dpll_pin_ref *ref;
>+	u64 freq = nla_get_u64(a), old_freq;
>+	struct dpll_pin_ref *ref, *failed;
>+	const struct dpll_pin_ops *ops;
>+	struct dpll_device *dpll;
> 	unsigned long i;
> 	int ret;
> 
> 	if (!dpll_pin_is_freq_supported(pin, freq)) {
>-		NL_SET_ERR_MSG_ATTR(extack, a, "frequency is not supported by the device");
>+		NL_SET_ERR_MSG_ATTR(extack, a,
>+				    "frequency is not supported by the device");

No need for this wrapping. Seems unrelated to the rest of the patch
anyway.


> 		return -EINVAL;
> 	}
>-

No need for this too.



> 	xa_for_each(&pin->dpll_refs, i, ref) {
>-		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>-		struct dpll_device *dpll = ref->dpll;
>-
>-		if (!ops->frequency_set)
>+		ops = dpll_pin_ops(ref);
>+		if (!ops->frequency_set || !ops->frequency_get)
> 			return -EOPNOTSUPP;

Add an extack msg while you are at it - could be a separate patch.


>+	}
>+	ref = dpll_xa_ref_dpll_first(&pin->dpll_refs);
>+	ops = dpll_pin_ops(ref);
>+	dpll = ref->dpll;
>+	ret = ops->frequency_get(pin, dpll_pin_on_dpll_priv(dpll, pin), dpll,
>+				 dpll_priv(dpll), &old_freq, extack);
>+	if (ret) {
>+		NL_SET_ERR_MSG(extack, "unable to get old frequency value");
>+		return ret;
>+	}
>+	if (freq == old_freq)
>+		return 0;
>+
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
> 		ret = ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
> 					 dpll, dpll_priv(dpll), freq, extack);
>-		if (ret)
>-			return ret;
>+		if (ret) {
>+			failed = ref;

Extack msg.


>+			goto rollback;
>+		}
> 	}
> 	__dpll_pin_change_ntf(pin);
> 
> 	return 0;
>+
>+rollback:
>+	xa_for_each(&pin->dpll_refs, i, ref) {
>+		if (ref == failed)
>+			break;
>+		ops = dpll_pin_ops(ref);
>+		dpll = ref->dpll;
>+		if (ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
>+				       dpll, dpll_priv(dpll), old_freq, extack))
>+			NL_SET_ERR_MSG(extack, "set frequency rollback failed");
>+	}
>+	return ret;
> }
> 
> static int
>-- 
>2.38.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
