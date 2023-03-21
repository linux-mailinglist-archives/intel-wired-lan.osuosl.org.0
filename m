Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1F46C4F42
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 16:19:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1FEA0417D4;
	Wed, 22 Mar 2023 15:19:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1FEA0417D4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679498352;
	bh=t8P62TbYMmTZV9OChyLIbd4s3E4Xf5oXWdVTaX6wAFQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LvPcV+ZWaxINxtMarAnR5cY36gfK3Hca5dgU+y/2FLm2GchS622TGgGS8IaSuwR81
	 sDFtZBvVy8WSb/zoZWI/k/sly2004rJ7jLAFNIUUbxtn9uf7/fmqmaLtdeSDxAJ4OO
	 AZ6hdrqM20+03FEjF20X2etVl22SqWh0d2RWCinq3j3qJi8T7RfF1KXMMJr7dJH5a6
	 8LlYaIIh98/Dno2mPayu/PYdVuQbZlOsXmRPFIGuYy2CR1FstcUufAcDk/OIhufKlP
	 YZVJEJcLQZ8PmUOcksc6YJvSlS+mi4UHC/lpMkEnlMYKUV9UJ4VzMosB3GI79qQngs
	 P1a8Se74RaFDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MggYwzzmPvxc; Wed, 22 Mar 2023 15:19:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0D245417D2;
	Wed, 22 Mar 2023 15:19:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D245417D2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 960261BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 20:43:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7299E4028C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 20:43:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7299E4028C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DKaOgQ1z2Nzp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Mar 2023 20:43:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58E734026E
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 58E734026E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 20:43:37 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id cy23so64627647edb.12
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Mar 2023 13:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679431415;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=PeP3HcyTjPxxNOqAcC7pbi/56qhRwp+1YhUNPsmy6fU=;
 b=4uTgw23IL6+ulE+Q/iBBEx0d1Q37C2fWOIBBCrjUBQDjkPiaLx+csp5HMcNKuWTeS5
 PQszx+4U+RnwZ/4jF445SrdUanQ+4Tv08qAm8HSoHDm38PfjancixbXs1K4ogr5TKCKa
 fTPSaDtbdeiQAEjzXDLFJE86IkLvsEcmgR322yq+zc34a7PFMo/DY3eDtt8lwzmds95H
 gcT07CZxmaYvQrx66oPU+i4i+kIooWFZS1aiHjfsTSO1VlX9updHSE6cz+Z9BRl0qCO0
 vUBFLj+VF2uWbvUKhCXKGz2BQZ1kfvq4FvaCiwhO8IpCIg+yHgWVlMc6lMt0Ljw9DuF8
 ezHQ==
X-Gm-Message-State: AO0yUKUyOQBzoFSHF+NXX0Cd7kESyD04LcrWt0AmdHRDtC+SanTyvViE
 lTL14gsNBl/Ybt0is2ItBaw=
X-Google-Smtp-Source: AK7set/c7W6993tvLP5KS1XL2pRd+/p9dzzTr79//sn5QJyfVm4aGb4clNy4ztzxUFKKbpdXZjji4w==
X-Received: by 2002:a17:906:b0c3:b0:930:d0f1:9d8 with SMTP id
 bk3-20020a170906b0c300b00930d0f109d8mr4649981ejb.27.1679431415126; 
 Tue, 21 Mar 2023 13:43:35 -0700 (PDT)
Received: from [192.168.0.106] ([77.126.33.94])
 by smtp.gmail.com with ESMTPSA id
 w11-20020a1709067c8b00b009231714b3d4sm6120435ejo.151.2023.03.21.13.43.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Mar 2023 13:43:34 -0700 (PDT)
Message-ID: <682a413b-4f84-cc06-d378-3b44d721c64e@gmail.com>
Date: Tue, 21 Mar 2023 22:43:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Jesper Dangaard Brouer <brouer@redhat.com>, bpf@vger.kernel.org
References: <167940675120.2718408.8176058626864184420.stgit@firesoul>
From: Tariq Toukan <ttoukan.linux@gmail.com>
In-Reply-To: <167940675120.2718408.8176058626864184420.stgit@firesoul>
X-Mailman-Approved-At: Wed, 22 Mar 2023 15:19:06 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1679431415;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=PeP3HcyTjPxxNOqAcC7pbi/56qhRwp+1YhUNPsmy6fU=;
 b=j3ciKxYJHhH/chjp36YI2YdFfcO5EpzvHTNralvW9CnX77P6Jonyz7QY5h/wkINJBa
 g2znG/xBD/L8ZHRPq3qdsF1NWqh2NrU3f9xlJ5Q6o24heWlflql8zTpFK3L3UaeDjnBR
 WK7AdWhLYsoe3Jp2TSeoJX063CN58apF9qgvMFRFEGfnPgX7CL0fDRMWC4HWNAxyaQW6
 i8U6e5fGpo2MOJ57vzCeaiksd7K6TAsyP3PbKocWcJ+ZuOP+/pZ6+QDR7JOL2QAG8rVF
 IHEAbbVesSc+skK6Ur0vetytJ7htfrZHlAICj4hvpBHNED2L+NQcw+wcshHZZLfwXgUb
 9TNg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=j3ciKxYJ
Subject: Re: [Intel-wired-lan] [PATCH bpf V2] xdp: bpf_xdp_metadata use
 EOPNOTSUPP for no driver support
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, jesse.brandeburg@intel.com, edumazet@google.com,
 pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, kuba@kernel.org, boon.leong.ong@intel.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 davem@davemloft.net, hawk@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 21/03/2023 15:52, Jesper Dangaard Brouer wrote:
> When driver doesn't implement a bpf_xdp_metadata kfunc the fallback
> implementation returns EOPNOTSUPP, which indicate device driver doesn't
> implement this kfunc.
> 
> Currently many drivers also return EOPNOTSUPP when the hint isn't
> available, which is ambiguous from an API point of view. Instead
> change drivers to return ENODATA in these cases.
> 
> There can be natural cases why a driver doesn't provide any hardware
> info for a specific hint, even on a frame to frame basis (e.g. PTP).
> Lets keep these cases as separate return codes.
> 
> When describing the return values, adjust the function kernel-doc layout
> to get proper rendering for the return values.
> 
> Fixes: ab46182d0dcb ("net/mlx4_en: Support RX XDP metadata")
> Fixes: bc8d405b1ba9 ("net/mlx5e: Support RX XDP metadata")
> Fixes: 306531f0249f ("veth: Support RX XDP metadata")
> Fixes: 3d76a4d3d4e5 ("bpf: XDP metadata RX kfuncs")
> Signed-off-by: Jesper Dangaard Brouer <brouer@redhat.com>

For the mlx4/5 parts:
Acked-by: Tariq Toukan <tariqt@nvidia.com>

Thanks!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
