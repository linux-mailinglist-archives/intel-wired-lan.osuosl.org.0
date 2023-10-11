Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A917C5138
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 13:11:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F5D940931;
	Wed, 11 Oct 2023 11:11:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F5D940931
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697022687;
	bh=S8GvBXhZgqU/MW+/mWrLGbypw5+LU3ROpNNB0rts6CI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lSol8hwPpAX5d/KyDxaSFUH/HIDqPzFMNuYlikcD3zDobYiOzuDj8AWOdwd7px/Wg
	 RRhtA/6t2UAM4x5zSsyOww38BdPNfHhhMtU0ITRbKOMU9g5CQGvxcZdreHOBcdPfmr
	 ga9rQvsCLEhvZcO9fVa217o7fihNyNpoyNhA/TS2Ih2ffaxBrUTibLc9jDNU12MboB
	 sSNsW1AjlATycsAcuahQvcsRmx/8sJBWUOa6H7l7N4hMgqIpDkDcgcjgRGkiYVLATt
	 C5RibIa6h+yOODJWX+ow7drByFjyZiZljz0XFI1IiIVUGQf/iYZdaH5QXsJBfOA5Hk
	 /p0tmH2fwEC1w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qn2tssD0OQ3N; Wed, 11 Oct 2023 11:11:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9C077408F8;
	Wed, 11 Oct 2023 11:11:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9C077408F8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8DCBD1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6588081831
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:11:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6588081831
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lZUvD0F9PgDg for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 11:11:18 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5724F80EC9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 11:11:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5724F80EC9
Received: by mail-wm1-x329.google.com with SMTP id
 5b1f17b1804b1-406402933edso62901165e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 04:11:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697022675; x=1697627475;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S5GNKoDzJaHuzKJxlYhSGC/WySAPDC162s7razYkn5c=;
 b=QeQyD6yEGCX8t8SSlKuFZ1fXT68d4uoelhh9BtWEhxxU1KLXeG8bdyeozrIWWowSB9
 ec46Vk7Uvw76CyDJ2uoyN+Wxh3UFI/M1AqCaq/0o0G92IIJuUeUpVrm7g6qINZ32CS8H
 q3tv5u7Fy5rhLSKjNCM0x4BsYStluNcXGscpodofSE6dZEcn57bvOcRLvAMbcBCq45RH
 6/W4VZeDFqid/04xM/16f+S7LXMbkuR5faDBPSJURW97MMi+9DKPIWPMgoVZaubVqqtD
 D4jvIp2UqJV4lJDOMGHZTjV+kyTdrtKWNBRb6oZXyuOFYNzSzuCDtUrGsc34y6ISFWqq
 ka+Q==
X-Gm-Message-State: AOJu0YzfStqQH8Um9bRSdDkoX3YiH1l+wSOnbwtuxlG5k/buVl4RoXB6
 AiFUB07ZsMsSZSM4qTxHOY7iWw==
X-Google-Smtp-Source: AGHT+IFMWdRjvrgTbr57qIWQAFPotfX/2bryYCgBf8xJCd9HLat6ps/im4EniVGCVudDPL3jp6V+BQ==
X-Received: by 2002:adf:a152:0:b0:32d:8942:9ff5 with SMTP id
 r18-20020adfa152000000b0032d89429ff5mr720660wrr.14.1697022674877; 
 Wed, 11 Oct 2023 04:11:14 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 g10-20020a5d698a000000b00327297abe31sm15135858wru.68.2023.10.11.04.11.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Oct 2023 04:11:14 -0700 (PDT)
Date: Wed, 11 Oct 2023 13:11:13 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZSaC0Qg0UwHveMcz@nanopsycho>
References: <20231011101236.23160-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231011101236.23160-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1697022675; x=1697627475;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=S5GNKoDzJaHuzKJxlYhSGC/WySAPDC162s7razYkn5c=;
 b=ZHlTA4JhpOjTexdv3ySne6Bke82rvHDvAjw+ypTIql1PEyUa2s6ttnrizxN8jnTrro
 8ADFuvM2548UA9FJWlMbHy+/+3TsYEyZ/5m2tcCatY8v5dkRvgPP+1ErvEH3DqBZETgW
 F3Pfx9bo3x28ywnPDafte14dJcbiq84Vywej6nGm1FU8tGNWJzpdPON9VaqMCePTaBnu
 5RkfkMUUdEJR2AIswm1MsxBQ+CADQtnfWNbSG5SikkUIcbMyaApybji8Aese8MfdspgP
 Acmgzr7yoA0zf8THyQmvFY3ZqczDv4N19e/d+otuRYc6YwmlhI361hCiyf7wVrPxxp4l
 KwSA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ZHlTA4Jh
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/5] dpll: add
 phase-offset and phase-adjust
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

Wed, Oct 11, 2023 at 12:12:31PM CEST, arkadiusz.kubalewski@intel.com wrote:
>Improve monitoring and control over dpll devices.
>Allow user to receive measurement of phase difference between signals
>on pin and dpll (phase-offset).
>Allow user to receive and control adjustable value of pin's signal
>phase (phase-adjust).
>
>v4->v5:
>- rebase series on top of net-next/main, fix conflict - remove redundant
>  attribute type definition in subset definition
>
>v3->v4:
>- do not increase do version of uAPI header as it is not needed (v3 did
>  not have this change)
>- fix spelling around commit messages, argument descriptions and docs
>- add missing extack errors on failure set callbacks for pin phase
>  adjust and frequency
>- remove ice check if value is already set, now redundant as checked in
>  the dpll subsystem
>
>v2->v3:
>- do not increase do version of uAPI header as it is not needed
>
>v1->v2:
>- improve handling for error case of requesting the phase adjust set
>- align handling for error case of frequency set request with the
>approach introduced for phase adjust

Again,
set-
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
