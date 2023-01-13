Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6D766A1E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 19:23:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35552821E6;
	Fri, 13 Jan 2023 18:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35552821E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673634178;
	bh=dPH66x+mShwrQ8EWm+MUBnRNYkp/RmV01B9ZTmMZxq8=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=uQacNpyi3aVLZ58G2BGoN4DsQq3UkBSRfyahyuxOmLG8idRsRuWd6G6HAzJdwEz58
	 yUIGDHCT/PKiGJk/NA5R9WdWyMGOGMS9UkAB3X1jpxpOJ9kkOUdz5RodZ0ZuBRuzpD
	 64NfRk2m8hyShLFYQcn2l0AVUBSZGsTO3gA2NsTXFXb+TyOAkLwvEfAJJBofvTOku7
	 2WAfgjgxJ1wB0cgTQTf9hCs+idOJacVOMEbO90qRPJcRCRNApq7OaigNZ+ngseVwPz
	 ywMIuERu15FY/6GkibXjXO7hKWDJekt7l8g9AU5nnnIprsuMzUq/VvJKeUVLp4+Ftb
	 lbLR0JdRuPNXw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kJKVl_Zv7G17; Fri, 13 Jan 2023 18:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F5C982169;
	Fri, 13 Jan 2023 18:22:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F5C982169
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 585111BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 18:22:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 32A2D41593
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 18:22:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 32A2D41593
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BcV8qFBaJRBz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 18:22:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 467D2414E6
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 467D2414E6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 18:22:51 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id qk9so54215388ejc.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:22:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SwxEeoGBgqRIV/iTuXNna3YResob5aMiHbzkuhRkD6k=;
 b=i7uj5ibzyg2KCHZULCEcyzkGHMbk7u4DqymM2KmGZl+1Lebq8A4EDc7bvzEPl2rl6e
 0O82T9DHJ0l4D1DLgjkbAQL9DsOmX6wWjoGBWDcF/jByfNADfSAvVXDFhymjdYwi7O0U
 mNmFo5ckUh3xWdWSMxVpIhhz+HAKQb562CZSpcNxqpHukoBdqXT/h8Qr9nbxBKbuaURL
 7ckJ32TNxU0WFia7FLWW05GACfTJA3Cr8SDw9+wB6kbH6hsPZilMfKtfQcOTdv9wcI+w
 oFpc7glYGf6CKh2JgXJ18528EXJ/GT+LuYftwHdkflCsTtSQJW+ayVJMra82k+i76eQC
 71/A==
X-Gm-Message-State: AFqh2ko1NSM+idYEW//dBRWsWUiWJGA7O9BnY2Mjr6YiuQG+PSQWEtTH
 YO92j3VZCDgpRnKsW13qh8k+IDP8nsytwgm2njg=
X-Google-Smtp-Source: AMrXdXtDQ5zbeXxwiqexSN7tlDEbCSIXvSEfo9MUWeOCXq3VPu76R7iqDQmEY6zHzqbrZU0+ecj+i45QIdtFWZ+WGwc=
X-Received: by 2002:a17:906:75a:b0:855:d6ed:60d8 with SMTP id
 z26-20020a170906075a00b00855d6ed60d8mr1030695ejb.302.1673634169384; Fri, 13
 Jan 2023 10:22:49 -0800 (PST)
MIME-Version: 1.0
References: <cover.1671462950.git.lorenzo@kernel.org>
 <6cce9b15a57345402bb94366434a5ac5609583b8.1671462951.git.lorenzo@kernel.org>
 <CAEf4BzbOF-S3kjbNVXCZR-K=TGarfi06ZwG1cbNF=HSSodwEfg@mail.gmail.com>
 <Y72f1U2/dw8jo0/0@lore-desk>
In-Reply-To: <Y72f1U2/dw8jo0/0@lore-desk>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Fri, 13 Jan 2023 10:22:37 -0800
Message-ID: <CAEf4BzawqXs6q18U8e5GD5d+9v1_w2+QOJYqmEpNb9rZ40E1Tw@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=SwxEeoGBgqRIV/iTuXNna3YResob5aMiHbzkuhRkD6k=;
 b=qrUJyijRNovU1IU30Vqk0MDytJbYIrCDe+OrzY8r2B4HvjGDXaETA9j1xBZPQcrRyw
 lCQZ55u//NbIUmrKleGsDP742Lmxmdk5dSwrm9rFkHry5YqZQa2/CP5Ur6Da/a/iHqiP
 Sj0OAU9aYU3OC9HxwMV2FWdJicVaAY7KrwVCCjUe88QFVWHfoLG+G+IijWkdsKTQSgNI
 Vgq8HapnzEAqUXZ5b3B3TOScfQAuZT8jQgxizfPPowxJ/ocSti634/M+SH7jySsbBsVe
 +SnU8Pigbn6pL+U///bJs1il7DueHjH6vYVjQoR0qltcmxPeFiTuLdM4FpVwEpOm7a+X
 Dxsg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=qrUJyijR
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

On Tue, Jan 10, 2023 at 9:26 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> > On Mon, Dec 19, 2022 at 7:42 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
> > >
> > > From: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > >
> > > Add functions to get XDP/XSK supported function of netdev over route
> > > netlink interface. These functions provide functionalities that are
> > > going to be used in upcoming change.
> > >
> > > The newly added bpf_xdp_query_features takes a fflags_cnt parameter,
> > > which denotes the number of elements in the output fflags array. This
> > > must be at least 1 and maybe greater than XDP_FEATURES_WORDS. The
> > > function only writes to words which is min of fflags_cnt and
> > > XDP_FEATURES_WORDS.
> > >
> > > Co-developed-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > > Co-developed-by: Marek Majtyka <alardam@gmail.com>
> > > Signed-off-by: Marek Majtyka <alardam@gmail.com>
> > > Signed-off-by: Kumar Kartikeya Dwivedi <memxor@gmail.com>
> > > ---
> > >  tools/lib/bpf/libbpf.h   |  1 +
> > >  tools/lib/bpf/libbpf.map |  1 +
> > >  tools/lib/bpf/netlink.c  | 62 ++++++++++++++++++++++++++++++++++++++++
> > >  3 files changed, 64 insertions(+)
> > >
> > > diff --git a/tools/lib/bpf/libbpf.h b/tools/lib/bpf/libbpf.h
> > > index eee883f007f9..9d102eb5007e 100644
> > > --- a/tools/lib/bpf/libbpf.h
> > > +++ b/tools/lib/bpf/libbpf.h
> > > @@ -967,6 +967,7 @@ LIBBPF_API int bpf_xdp_detach(int ifindex, __u32 flags,
> > >                               const struct bpf_xdp_attach_opts *opts);
> > >  LIBBPF_API int bpf_xdp_query(int ifindex, int flags, struct bpf_xdp_query_opts *opts);
> > >  LIBBPF_API int bpf_xdp_query_id(int ifindex, int flags, __u32 *prog_id);
> > > +LIBBPF_API int bpf_xdp_query_features(int ifindex, __u32 *fflags, __u32 *fflags_cnt);
> >
> > no need to add new API, just extend bpf_xdp_query()?
>
> Hi Andrii,
>
> AFAIK libbpf supports just NETLINK_ROUTE protocol. In order to connect with the
> genl family code shared by Jakub we need to add NETLINK_GENERIC protocol support
> to libbf. Is it ok to introduce a libmnl or libnl dependency in libbpf or do you
> prefer to add open code to just what we need?

I'd very much like to avoid any extra dependencies. But I also have no
clue how much new code we are talking about, tbh. Either way, the less
dependencies, the better, if the result is an acceptable amount of
extra code to maintain.

> I guess we should have a dedicated API to dump xdp features in this case since
> all the other code relies on NETLINK_ROUTE protocol. What do you think?
>

From API standpoint it looks like an extension to bpf_xdp_query()
family of APIs, which is already extendable through opts. Which is why
I suggested that there is no need for new API. NETLINK_ROUTE vs
NETLINK_GENERIC seems like an internal implementation detail (but
again, I spent literally zero time trying to understand what's going
on here).

> Regards,
> Lorenzo
>
> >
> > >
> > >  /* TC related API */
> > >  enum bpf_tc_attach_point {
> > > diff --git a/tools/lib/bpf/libbpf.map b/tools/lib/bpf/libbpf.map
> > > index 71bf5691a689..9c2abb58fa4b 100644
> > > --- a/tools/lib/bpf/libbpf.map
> > > +++ b/tools/lib/bpf/libbpf.map
> > > @@ -362,6 +362,7 @@ LIBBPF_1.0.0 {
> > >                 bpf_program__set_autoattach;
> > >                 btf__add_enum64;
> > >                 btf__add_enum64_value;
> > > +               bpf_xdp_query_features;
> > >                 libbpf_bpf_attach_type_str;
> > >                 libbpf_bpf_link_type_str;
> > >                 libbpf_bpf_map_type_str;
> >
> > [...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
