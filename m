Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 81791652A66
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Dec 2022 01:18:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC566417D1;
	Wed, 21 Dec 2022 00:18:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AC566417D1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671581913;
	bh=ReklsQc0GmMyOVy/yNGkAiR2cy8alg/BqPDLDNygyK0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AQ+C0H+Q0DTVT2FBqu0h3NeUFp5NMF4mBKIZdb7eKueTxzD70B3Of9mUK3bLo4gO0
	 CZjx7TzKRYV6zo9/f2OYWtUWwKc7dU+9IttgKgKDw5WiWh4KiLTsrgFRiek92sA9Pb
	 ZpOKvS4cjvqw7DzU4kfiwu3EHXrq6/TCphfwOoixwnEqylsfjALzASKY22pkTUAj6T
	 11TgF6HXCQarqQXakX3L9Y8wVlWw+cA6grXr+mmLxsZCdz4duogehWwjdgi80AT5oE
	 x/bR+B7+UVb9xIgTHeS/TJFjibBDe1VxkdLvWypfQtIufRarLiRQEbEsEBS9rnXXj9
	 6qYIg8y2J9Yzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0k7faLQen-cO; Wed, 21 Dec 2022 00:18:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4502C417C9;
	Wed, 21 Dec 2022 00:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4502C417C9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CB0D1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 00:18:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8344D4056C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 00:18:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8344D4056C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DH1Z0uvUKIow for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Dec 2022 00:18:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 567A34013F
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 567A34013F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Dec 2022 00:18:24 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id d20so19969052edn.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Dec 2022 16:18:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=naZ0oUxMFWyFMkbBQHoBeUSSPqcubeS5ksQDUm2Hg1k=;
 b=D2d8V3J/6rEf/mPXN4iSHZJaY4n7rY89UZBhz/qwQdhWDLDpyD7/dK8GrrvA6J0iaz
 /JnfY2qXudOgKlJDesDYi9GrXMeM5CEkYQU3wetbrVN6cMT8pBQEXNy+HTNftW91WPc7
 JtFgUKHacmMStGJ+/X2TP1dJulZXRKuTFM4Wdb5PA+/vMDz1mk+hsd1nzMMfFq2GHRRH
 g/Erwzq8yzbkUOPJIYaPwyj9cL1NDBu+Lts2WmOwyBCsrWRIs//Rqi5sgaE6lAm//aai
 WnQh/lixP/K/oW9OkBxR5VL8tN7CRvR3Zz91M6kA9L1epFaWQmV+6SJ+8IMK8QUdsVkP
 Y16w==
X-Gm-Message-State: ANoB5pkb6y2cqsPznuRVEKvvZJTlzaT5SK6VtvXgzTR6GzxYUQikjNFa
 k5882Keia96fF5y2rN804U7VM6VxWfQROYn+XrE=
X-Google-Smtp-Source: AA0mqf4hyD7lU1M1NTC1FjEOfFlrHznslaVNRoCVa93P50LoSG8hnoYNDpxM7q6fHr5s63GkykAy7hWMehIMT/kBrVM=
X-Received: by 2002:a50:ed90:0:b0:46a:e6e3:b3cf with SMTP id
 h16-20020a50ed90000000b0046ae6e3b3cfmr52119503edr.333.1671581902316; Tue, 20
 Dec 2022 16:18:22 -0800 (PST)
MIME-Version: 1.0
References: <cover.1671462950.git.lorenzo@kernel.org>
 <6cce9b15a57345402bb94366434a5ac5609583b8.1671462951.git.lorenzo@kernel.org>
In-Reply-To: <6cce9b15a57345402bb94366434a5ac5609583b8.1671462951.git.lorenzo@kernel.org>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 20 Dec 2022 16:18:10 -0800
Message-ID: <CAEf4BzbOF-S3kjbNVXCZR-K=TGarfi06ZwG1cbNF=HSSodwEfg@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=naZ0oUxMFWyFMkbBQHoBeUSSPqcubeS5ksQDUm2Hg1k=;
 b=ma/Y3lM2RaFmYK4F9I1TdBDSWj3qNGAs4tTdugWoBBWgCb6LjcypbiZHYttKSbP6WQ
 HLENwnvznUQ4czFvDaPNGGc892LvpM+uLpAz/sM1Y3FVaI9N33h+Pmww4jrltpwmsoJq
 gBWpwiaVuXE7E4/NEusH+iY0IDvY/yIcpQ2/dXoNILIzjK0KhpL6mZ7F9czl6zQ4Xeps
 lj26+pTaq7MajKF1/UZctJxqhmMMroOsh1XAhLxwAAc/NQckaq3uoS0deWZHmwrwCfYN
 Bja3hTS/lr3cpQ1xOuezQuZkTgyRH1P7uMNxLBO1I90OKMzWjx+glzFq2bBe//SVBZ5y
 BM3w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=ma/Y3lM2
Subject: Re: [Intel-wired-lan] [RFC bpf-next 6/8] libbpf: add API to get
 XDP/XSK supported features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, grygorii.strashko@ti.com,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 toke@redhat.com, ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Dec 19, 2022 at 7:42 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
>
> Add functions to get XDP/XSK supported function of netdev over route
> netlink interface. These functions provide functionalities that are
> going to be used in upcoming change.
>
> The newly added bpf_xdp_query_features takes a fflags_cnt parameter,
> which denotes the number of elements in the output fflags array. This
> must be at least 1 and maybe greater than XDP_FEATURES_WORDS. The
> function only writes to words which is min of fflags_cnt and
> XDP_FEATURES_WORDS.
>
> Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> Co-developed-by: Marek Majtyka <alardam@gmail.com>
> Signed-off-by: Marek Majtyka <alardam@gmail.com>
> Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> ---
>  tools/lib/bpf/libbpf.h   |  1 +
>  tools/lib/bpf/libbpf.map |  1 +
>  tools/lib/bpf/netlink.c  | 62 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 64 insertions(+)
>
> diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
> index eee883f007f9..9d102eb5007e 100644
> --- a/tools/lib/bpf/libbpf.h
> +++ b/tools/lib/bpf/libbpf.h
> @@ -967,6 +967,7 @@ LIBBPF_API int bpf_xdp_detach(int ifindex, __u32 flags,
>                               const struct bpf_xdp_attach_opts *opts);
>  LIBBPF_API int bpf_xdp_query(int ifindex, int flags, struct bpf_xdp_query_opts *opts);
>  LIBBPF_API int bpf_xdp_query_id(int ifindex, int flags, __u32 *prog_id);
> +LIBBPF_API int bpf_xdp_query_features(int ifindex, __u32 *fflags, __u32 *fflags_cnt);

no need to add new API, just extend bpf_xdp_query()?

>
>  /* TC related API */
>  enum bpf_tc_attach_point {
> diff --git a/tools/lib/bpf/libbpf.map b/tools/lib/bpf/libbpf.map
> index 71bf5691a689..9c2abb58fa4b 100644
> --- a/tools/lib/bpf/libbpf.map
> +++ b/tools/lib/bpf/libbpf.map
> @@ -362,6 +362,7 @@ LIBBPF_1.0.0 {
>                 bpf_program__set_autoattach;
>                 btf__add_enum64;
>                 btf__add_enum64_value;
> +               bpf_xdp_query_features;
>                 libbpf_bpf_attach_type_str;
>                 libbpf_bpf_link_type_str;
>                 libbpf_bpf_map_type_str;

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
