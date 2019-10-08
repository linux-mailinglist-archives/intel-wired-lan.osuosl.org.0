Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 45162CF32D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Oct 2019 09:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7FEC84F4C;
	Tue,  8 Oct 2019 07:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gNzoaj2QJv35; Tue,  8 Oct 2019 07:05:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49C1585540;
	Tue,  8 Oct 2019 07:05:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F21A1BF287
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 07:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7985B84F4C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 07:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppWtpphKAG3f for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Oct 2019 07:05:11 +0000 (UTC)
X-Greylist: delayed 00:06:48 by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5ACAA84F5A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Oct 2019 07:05:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1570518310;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BjiVfnfo3B219hJevj+nUA5nd9HYypooTjDbpxlfu2E=;
 b=TlmC/tdHZ2VZO6WcS8fPgdvPGIR4A3nJoDKHygPSX8rab7koNljnxYlPHl+vJfnUEbtHJE
 ATmn0nxabhX/YIN5ARs+e9hqVAlq7TNwW7kq4Vay7ofAmY27dHw+UnBVGqRh4X58kmZuNe
 7Wksj/GCgBQgRjsYaPU4IaVWOVlVUq4=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-72-2GN7ZnrFOTOWPHlhyuwK_Q-1; Tue, 08 Oct 2019 02:58:20 -0400
Received: by mail-lj1-f199.google.com with SMTP id m22so4047450ljj.6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Oct 2019 23:58:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=S9PjHaofBE8WvE/gCT9+Hpu5GwookQh45Bj4/FXFqOI=;
 b=DHXwyQhvlRMHXVzq3W10UjsD7+Xy9G9DR0PpZWUQAZnpx+xHYo9OVtKBJA0xza2UFc
 iFOCJmvUmaEuSRSFVLMkJA3IrCwdgkISbnjWNyft7OZMQ2E4tt8Extz8uXGNkE0X17Y+
 f0STVSB269yKNnXVL+FtmOnTvjw8/DC6ZEsb7pogoUf/6954sceVl8nj/9A3NYdteQXA
 698k9CQqIxiharHVF2qs3IABlDZwbJT3lHBPp/e5yIgIBCEjFxb/TMuNaBiTiJ2CGFXt
 FQ8rSwag6lIxVYq6HME2HFSNp/R2FLxwQX8Yo6EFJhqDjDqQtw51n8q4AXCkWqXVRc5g
 IeGA==
X-Gm-Message-State: APjAAAXRZg8w31hvQAQE9cISAvQikypikrpXUnW1fGZXDK/B/Vh+loMx
 seqP5JroaqLW0Cmnmxafv1eWHYp+qHYe8KMCb27xIfBtJ+8VETfRg+R/wZp/cvUc6mBM0ieLEG0
 ajzJecOpNsEt1TuKMuRTTAN9xBQEJ6g==
X-Received: by 2002:a2e:730a:: with SMTP id o10mr21912320ljc.214.1570517898898; 
 Mon, 07 Oct 2019 23:58:18 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzcpPsm8E/3M1oXM5bmklENMw0tvOHJJmGog/AgsVSfuHgI1NlUp2BPNtR6+WN3vcVRbtaEPA==
X-Received: by 2002:a2e:730a:: with SMTP id o10mr21912299ljc.214.1570517898646; 
 Mon, 07 Oct 2019 23:58:18 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id b6sm3972837lfi.72.2019.10.07.23.58.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Oct 2019 23:58:17 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id BF15F18063D; Tue,  8 Oct 2019 08:58:16 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Sridhar Samudrala <sridhar.samudrala@intel.com>, magnus.karlsson@intel.com,
 bjorn.topel@intel.com, netdev@vger.kernel.org, bpf@vger.kernel.org,
 sridhar.samudrala@intel.com, intel-wired-lan@lists.osuosl.org,
 maciej.fijalkowski@intel.com, tom.herbert@intel.com
In-Reply-To: <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
References: <1570515415-45593-1-git-send-email-sridhar.samudrala@intel.com>
 <1570515415-45593-3-git-send-email-sridhar.samudrala@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 08 Oct 2019 08:58:16 +0200
Message-ID: <875zkzn2pj.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: 2GN7ZnrFOTOWPHlhyuwK_Q-1
X-Mimecast-Spam-Score: 0
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 2/4] xsk: allow AF_XDP
 sockets to receive packets directly from a queue
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sridhar Samudrala <sridhar.samudrala@intel.com> writes:

>  int xdp_do_redirect(struct net_device *dev, struct xdp_buff *xdp,
>  		    struct bpf_prog *xdp_prog)
>  {
>  	struct bpf_redirect_info *ri = this_cpu_ptr(&bpf_redirect_info);
>  	struct bpf_map *map = READ_ONCE(ri->map);
> +	struct xdp_sock *xsk;
> +
> +	xsk = xdp_get_direct_xsk(ri);
> +	if (xsk)
> +		return xsk_rcv(xsk, xdp);

This is a new branch and a read barrier in the XDP_REDIRECT fast path.
What's the performance impact of that for non-XSK redirect?

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
