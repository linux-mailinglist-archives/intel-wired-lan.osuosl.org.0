Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 792C664401F
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 10:47:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9CCE5817FF;
	Tue,  6 Dec 2022 09:47:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9CCE5817FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670320033;
	bh=LliEO/AzihZ9ajc98hj+liweeECFMUkj96j0EKciFl8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rfzM4LFn2RlGk5//i8mNc0nLg/xFosEe0oKLN1+BmIimrO3X0Gw2tTClh7ytzHc7D
	 XVMzg+alc8LNrled4xU8pW562eeEseRY1oxOMgOijGg+J4Yg0s98NkjP7D1KvCQfxr
	 S/J7FNrPgozJMM9alVIGM87dFSmYol+SQEym7PmoA96V/RI4mZTcU43SMnS84dEawO
	 H1cFp5dmDYMNJAlxnxU6ww+sZ7fGMD83p/H5jXHqh+rtdO2spEKRhLiNP0OctBASAd
	 equPFOSFDJsKs5zstij7B73wvYusGt1MVqLC2q/8V5OfC93+s6ol8G+KU6ZTlCNStL
	 nyTw1eaZuFjsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RV0BFHpvK0NJ; Tue,  6 Dec 2022 09:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 905C381402;
	Tue,  6 Dec 2022 09:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 905C381402
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DF881BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:47:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77CF5404C0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 77CF5404C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOLuHBf9k-b0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 09:47:06 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9335340150
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9335340150
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 09:47:05 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id l11so19508444edb.4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Dec 2022 01:47:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uoyIxqzGZXgkn5M48vTsEEz1oFW22vZOFSRNqKRONdI=;
 b=aLJhTl9MI1zph5RUvviCZqxpp5WU7dvYyYdZr7S55snnq+7coNtP4SZtgro6VPhlnx
 QTzblCWQJFypJynozqOBvwgMUVGyZ1j9LY9IryVLhoiy3xky8dwR6UNqAo7Mc0mINF+5
 t4SFlEWltwkHLgKpXw6fbpRIPDDtWXoASv9j9I8YHvX0QV1U9uos3L2lDyIFbs8vtgYt
 F9ivfUKgqTC5Hvg9Su5FBrAXN4IiNQv+eFUNHHzH8uuq2R9dzYh/Q8KbOBwggBr3HqWa
 pWm4cwj0y5fbHSClEv/tpS4fwMb+MdmcBJ+AxhpUN7CcSPtHcUYJCmYfplvM2jrP7JUZ
 1PbA==
X-Gm-Message-State: ANoB5pktQmgvSFo2aLGHvWQx5AJHsv/K9/YLf7TFDVOcsujWFPTYTael
 2BNkMSEhRLgdJWiW88Lg493mTA==
X-Google-Smtp-Source: AA0mqf7n2tInC77VKPPE3/C2Gq+yrWHnbdfb/lyUBEa+63aDRK8dnp4+W16hlQQwo4Tt9DLnuR2T3A==
X-Received: by 2002:aa7:c9cd:0:b0:461:891a:8162 with SMTP id
 i13-20020aa7c9cd000000b00461891a8162mr75384182edt.398.1670320023337; 
 Tue, 06 Dec 2022 01:47:03 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 iy17-20020a170907819100b007c03fa39c33sm7108996ejc.71.2022.12.06.01.47.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Dec 2022 01:47:02 -0800 (PST)
Date: Tue, 6 Dec 2022 10:47:01 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>
Message-ID: <Y48PlUNsVKlvpRTd@nanopsycho>
References: <20221206030805.15934-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221206030805.15934-1-jiasheng@iscas.ac.cn>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=uoyIxqzGZXgkn5M48vTsEEz1oFW22vZOFSRNqKRONdI=;
 b=LYxydK/vo4udT1IuesDJ4X1pr5TXVAqVsN56s2RHt8ScC+nglGHQTnF/jrLDOXMQmC
 Aqi4ks6uTxA2PNILZLOJLyFBlj67dp29gh+UeaZkvZZKE2Eej2RNp5U+JI3n5npc0BNg
 +EkJFDdlnb53VPKolMU8QhR9VXfkrubjE7uBx5R2bt0w0JmZIyqNmViD9++exuXmfJ54
 As+pPh1QiKznYtDFHmKxi6lBe9R3WDMXRUnLNX6J/2n6emq0gXyJ/s14SEU9/s/YKRsz
 UiJzQt2PuMUwETPTSlg8oGWxOmow5PjNTg0muMfCYUusWE2wBiKdWB4UB2JImMCoOmjJ
 pHHQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=LYxydK/v
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Add check for kzalloc
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Dec 06, 2022 at 04:08:05AM CET, jiasheng@iscas.ac.cn wrote:
>As kzalloc may fail and return NULL pointer,
>it should be better to check the return value
>in order to avoid the NULL pointer dereference.

Okay, so? Be imperative to the code base, tell it what to do in your
patch description.


>
>Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
>Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
>---
> drivers/net/ethernet/intel/ice/ice_gnss.c | 13 ++++++++++++-
> 1 file changed, 12 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.c b/drivers/net/ethernet/intel/ice/ice_gnss.c
>index b5a7f246d230..6d3d5e75726b 100644
>--- a/drivers/net/ethernet/intel/ice/ice_gnss.c
>+++ b/drivers/net/ethernet/intel/ice/ice_gnss.c
>@@ -421,7 +421,7 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
> 	const int ICE_TTYDRV_NAME_MAX = 14;
> 	struct tty_driver *tty_driver;
> 	char *ttydrv_name;
>-	unsigned int i;
>+	unsigned int i, j;
> 	int err;
> 
> 	tty_driver = tty_alloc_driver(ICE_GNSS_TTY_MINOR_DEVICES,
>@@ -462,6 +462,17 @@ static struct tty_driver *ice_gnss_create_tty_driver(struct ice_pf *pf)
> 					       GFP_KERNEL);
> 		pf->gnss_serial[i] = NULL;
> 
>+		if (!pf->gnss_tty_port[i]) {
>+			for (j = 0; j < i; j++) {
>+				tty_port_destroy(pf->gnss_tty_port[j]);

You are destroying port which you didn't call (pf->gnss_tty_port[i])
for. Also, you are introducing a code duplication here with the error
path couple of lines below. Please convert this to goto-label error
path so the cleanup code is shared.


>+				kfree(pf->gnss_tty_port[j]);
>+			}
>+			kfree(ttydrv_name);
>+			tty_driver_kref_put(pf->ice_gnss_tty_driver);
>+
>+			return NULL;
>+		}
>+
> 		tty_port_init(pf->gnss_tty_port[i]);
> 		tty_port_link_device(pf->gnss_tty_port[i], tty_driver, i);
> 	}
>-- 
>2.25.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
