Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF6F7D508A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 15:00:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F73F84767;
	Tue, 24 Oct 2023 13:00:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F73F84767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698152456;
	bh=HlN1fQtkUv7XW4CA0b+ny0AnvZO/jTIsy3SXjP9eofs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JtVW9Q9XWnGFmVlmoiteLX0QKZUDqWYtn9c5dF3PZpeXhWKP1utg2uP9qjQ3z/27q
	 TfFXjQ4dDS7ckIXS4+5lVNMotycryYbiqeE84ZAU8/mrFb0RzZbmZYmYGGN0+vw6kq
	 cKA0FfsjYjhr1yo+HtfLvf6drUXI5yTqDNNNMCmDXQnO/RANk308nzWSaOwYuxb47C
	 bbue0BjCubrvBnvWLu4n60G1BXQbW8SmmUCmD8C9XVYQyz7cmoVhGtiRmXhll6GUOo
	 KjEwF/3cQ5jIDMNS5qn1n808jsHrWjCH3J5xbbSScBMO11qhZj+yauzXfwfeAryVut
	 S4JZ32SDGY+Kw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wb50u631lP0U; Tue, 24 Oct 2023 13:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 37F1C840FA;
	Tue, 24 Oct 2023 13:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 37F1C840FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA2FE1BF38E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 92F3F844CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:00:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92F3F844CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a8X20EvvGMfP for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 13:00:48 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9997683F2C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 13:00:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9997683F2C
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-507a55302e0so6017244e87.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 06:00:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698152446; x=1698757246;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=K9mkSvzL5AlqEqCk4gL6PQxVO/Ut1Am/gjPnbui/hZY=;
 b=GM6eanVQ60QVd0zhu3o3tfeoTgDY5hD9uMTbjmftmOMt/ZLrerw2OQkQy7P+FHgy2/
 8TmLVXSsGbjxsxHxqPDV85xbT/KfzcEeFBM1sW9ljOaWVn9K/esnOcRM/qJEPmVQbgtN
 O7fizP2vISik8YSNnY/bjnSPD5bSMizlxYdiIU8AcAmifpxTVghi/aHS/mnAfFQJJdf7
 nBbMf8T4+4Iamga6m51CUg2r85NJGxua6T62cnmn7IA9ns3eyM7sYlSLzRk/00r6q7a0
 5xcUk7IVn7J/DV0CNHKxKvQcw86ouO93oYjcaIMP4SCMyxZ9XxUNDJe1thFYIFBx2z9W
 LdDw==
X-Gm-Message-State: AOJu0Yx1tJCGWSTROUP54qWDe26KkAYG45Y/zgTu4ydSA8fA/hU7zZdL
 QvJbwNVlvZ09KwkJjt/UlFh0sA==
X-Google-Smtp-Source: AGHT+IF0yE6XO/mX2TbNGtNxqeLgtwKSWDprIrmqOUxkx9EVlX98W4Y61rPzb7TU1zWbcCeFWoQKdA==
X-Received: by 2002:ac2:532a:0:b0:507:9777:7a7 with SMTP id
 f10-20020ac2532a000000b00507977707a7mr8516878lfh.17.1698152446332; 
 Tue, 24 Oct 2023 06:00:46 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 gy5-20020a0564025bc500b0053d9cb67248sm7728993edb.18.2023.10.24.06.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Oct 2023 06:00:45 -0700 (PDT)
Date: Tue, 24 Oct 2023 15:00:44 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <ZTe//IyJUl10iFYI@nanopsycho>
References: <20231024125109.844045-1-ivecera@redhat.com>
 <20231024125109.844045-2-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231024125109.844045-2-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1698152446; x=1698757246;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=K9mkSvzL5AlqEqCk4gL6PQxVO/Ut1Am/gjPnbui/hZY=;
 b=fCaBVoGRrKl0PA6rg7vuGpGf2eIGHfkQIQE9UbEgmjUYn6WHADN1NH2x3MxQMaZwwu
 hNTEgDN0YNVpLzR2EbWFH0f4e8kl08HPhvyd5L5FxQhgPHgo1nGoJcP4wbS2y5PWTV9w
 ipRGUlN0hHLz6nxg3zm+4Xwbw6sSZoDoAHNkPK2xvtegBVKSrrUJGPHsmqdgGYf0hA7S
 R/TqYuKVJ7vCNbQbxvpujiD9WdbHTgvkfLfT9YaLkPHdAmnAwY8hX4eD/s407fKkMgrY
 2A/uTH8FSj0XKVNhxOf43G7NYg2UvVFej7y9IcGvTF8fCNDBym2f1POLFr3d0DfVBDkK
 7Riw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=fCaBVoGR
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] i40e: Fix devlink port
 unregistering
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Oct 24, 2023 at 02:51:09PM CEST, ivecera@redhat.com wrote:
>Ensure that devlink port is unregistered after unregistering
>of net device.
>
>Reproducer:
>[root@host ~]# rmmod i40e
>[ 4742.939386] i40e 0000:02:00.1: i40e_ptp_stop: removed PHC on enp2s0f1np1
>[ 4743.059269] ------------[ cut here ]------------
>[ 4743.063900] WARNING: CPU: 21 PID: 10766 at net/devlink/port.c:1078 devl_port_unregister+0x69/0x80
>...
>
>Fixes: 9e479d64dc58 ("i40e: Add initial devlink support")
>Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
