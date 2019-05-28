Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 118972D1BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 00:51:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 99987228D5;
	Tue, 28 May 2019 22:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z+6U4xuPE-gn; Tue, 28 May 2019 22:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2104F227F7;
	Tue, 28 May 2019 22:51:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 52ADB1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 22:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4414C84F58
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 22:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KUQi5i2-H304 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2019 22:51:35 +0000 (UTC)
X-Greylist: delayed 00:06:10 by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B47C85168
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 22:51:26 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id k24so256013qtq.7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2019 15:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=ItHlkUulkyp7p4gO4Xdx15+a3r1hxGp0OmKk82+bD2c=;
 b=YgpY4MEAudD44KMFtlH9S3gXEAmctPEXr9MLS2Wv54uKePKhH80mXQeAIRDpcqtsYl
 n8PJ+Z6zWnyhtPKG6sIOVXm2KlqviAUEwL50O75fBGcxXvbq4Q4jVoP+ACG300sYupm0
 PtfIVxtnarUQd8VWmDER/zARsVK/05pdlpLjsJdqqmAXL+wNyr58jWZqANxZZDnapjeJ
 ZDp2OLmvRl7mclyvE2CAUhsZxgNrplTPjO8QB0iFkCoKBbbqWDa4KNefAt5KSw9bGaue
 PmZzxnEcwABhVQrMc6rgoVKTvNGKxUQj04hdvjMVAq21pxPxwGHlSwM+K+UP6g92EscO
 NCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=ItHlkUulkyp7p4gO4Xdx15+a3r1hxGp0OmKk82+bD2c=;
 b=OYCLQe2/+ZiqY/S27XrJRYqFQd2r6aLP1H5uNki68XWtiCUy5zAq29A/GpVdqMPVbw
 I0QWk9SSQavnG9qxGmx5cL6KoTxc7deRUzm5IkPns3o9/AFl4OCAC80RXFE89cJODSq5
 JZjHJCseQG5Lkt/8AsyU72IcsWH9N6UI/8MD+3qf+E+u5OdwNFW6y/8iDmY94dSXTusc
 /INeFrMGHnEBm4JzKdyvryVy+tubK64Gq2BnQu4FI/4/oQSd+/mcSrbQ8L+jtkos8kd+
 RZNSWKlp4fX1lNMRRiVn4h7BE/kZBvUAYILhEVewreD8Gia6II0+IoiLjKZwz/3FpCuV
 O1Eg==
X-Gm-Message-State: APjAAAU11ToK8VZ+EFkBUdjfij/regE4puZC7U5h8kcwrmTKBStvz7VS
 9LEbAS6BQLE8SlXLIxUhmPSLeg==
X-Google-Smtp-Source: APXvYqxVyissAjCECaaOzVDFHMDpIwSpjYVyFDqQHoqD3LGEr4ZP7QQyxBJS0GBuotNDdKzv9yNZew==
X-Received: by 2002:ac8:2291:: with SMTP id f17mr48099014qta.51.1559083515532; 
 Tue, 28 May 2019 15:45:15 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id k127sm5195875qkb.96.2019.05.28.15.45.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 15:45:15 -0700 (PDT)
Date: Tue, 28 May 2019 15:45:10 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Vedang Patel <vedang.patel@intel.com>
Message-ID: <20190528154510.41b50723@cakuba.netronome.com>
In-Reply-To: <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
References: <1559065608-27888-1-git-send-email-vedang.patel@intel.com>
 <1559065608-27888-4-git-send-email-vedang.patel@intel.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 3/7] taprio: Add the
 skeleton to enable hardware offloading
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
Cc: jiri@resnulli.us, l@dorileo.org, netdev@vger.kernel.org, jhs@mojatatu.com,
 intel-wired-lan@lists.osuosl.org, xiyou.wangcong@gmail.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 May 2019 10:46:44 -0700, Vedang Patel wrote:
> From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> 
> This adds the UAPI and the core bits necessary for userspace to
> request hardware offloading to be enabled.
> 
> The future commits will enable hybrid or full offloading for taprio. This
> commit sets up the infrastructure to enable it via the netlink interface.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>

Other qdiscs offload by default, this offload-level selection here is a
little bit inconsistent with that :(

> @@ -731,6 +857,9 @@ static int taprio_change(struct Qdisc *sch, struct nlattr *opt,
>  	if (err < 0)
>  		return err;
>  
> +	if (tb[TCA_TAPRIO_ATTR_OFFLOAD_FLAGS])
> +		offload_flags = nla_get_u32(tb[TCA_TAPRIO_ATTR_OFFLOAD_FLAGS]);

You should make sure user doesn't set unknown bits.  Otherwise using
other bits will not be possible in the future.

>  	new_admin = kzalloc(sizeof(*new_admin), GFP_KERNEL);
>  	if (!new_admin) {
>  		NL_SET_ERR_MSG(extack, "Not enough memory for a new schedule");
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
