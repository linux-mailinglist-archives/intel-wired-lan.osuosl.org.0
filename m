Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C47ED67ECF4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 19:00:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2276831A9;
	Fri, 27 Jan 2023 18:00:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E2276831A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674842402;
	bh=13b+dGyxqdavu5jVGzHmayFv8P+6PhLObeBQ7xF4XG4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FctYQ7JD7NPurR2R4rkhbbERtBweKwVUmm2LlGhNqjz4w5pRDYWgBkUIcSV8iUESH
	 L34VQPhq8N8XQ87AP4tmxs+XJFTtqMDsKPVc/8jwBkpBbX9IirTIR3wMi/4rx3UFZ8
	 CBK/0spjoh2XDwj4eBMn9EJuFq4V8UVtTEMnZZXy056mNifjG1CkHtB7t2tqHPHrY+
	 FCkNlOi+X1i0TjF14rXmYciQENvwfrscQPtyLtUig6OFudOJ5uwYl7HuZyCpGSxcbT
	 fv+YMWYJ6UmR2QjnGK7aG8mEE7+cha/72O6PdIf8nfJYRm4wI3cP2c60gzwRtcUUE9
	 /Qxf+K+Zsdjig==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qgo6IX2hDN5M; Fri, 27 Jan 2023 18:00:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D4D2C83046;
	Fri, 27 Jan 2023 18:00:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4D2C83046
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 96A151BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:59:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F05382FA2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:59:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6F05382FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2MBgUxfI3bRA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 17:59:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2622883046
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com
 [IPv6:2607:f8b0:4864:20::434])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2622883046
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:59:54 +0000 (UTC)
Received: by mail-pf1-x434.google.com with SMTP id a184so3814417pfa.9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:59:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=SGRZU6sBKdHYY98vV9P0PZ2VeWaRqM0+iBCYc+44H+M=;
 b=zLNKJKtl/W+T+6+6/DdpbadmSPRDJCpkleOPz/SwfEA2zu6PR5wGu2e3M4DZAjfIDO
 9QL+ydMWZBYcWUvxIFI3xQ0zssRPwBGdHPVsnOj2kCEBxmR2CxQ8n4/uZsVJlH4nvE8U
 VjSZLDOWpDPS+BwrQ7O3SFaTBbfeVi9QCXhaOv3zBhJwXXIxZccPLInuYZGDcdOvqVpu
 2mIgImDpWVh3OCRXsBdVKoZv3Hlpk2nIYvujm+gHyRi122mh2lzTVwqlIndzppwey2uc
 UMiXNjUQ4yp33KjB5xEdjKtV4b5Yd1lIcECh0LUyNbsEK/AqyMZxVKtRxbspFg/4F6jj
 6Hiw==
X-Gm-Message-State: AO0yUKXN3XXupBZ7f3bZrjKbE8R3b2zGnHXnjBzh8j1YDRP/o4qK3x27
 Vj2Hor78MHL/VVShjuNJkmf+zpElRLwWslw66ZS79w==
X-Google-Smtp-Source: AK7set+EgMQvBR+QbbBn1xyxGpT3DVQcxryQ4OvzynBHTamIJ/yghEhaej7aGQD6ncamZugEaVIZXUHsFrqOoNB2ZmU=
X-Received: by 2002:a62:3307:0:b0:592:4847:79b0 with SMTP id
 z7-20020a623307000000b00592484779b0mr945654pfz.49.1674842394083; Fri, 27 Jan
 2023 09:59:54 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674737592.git.lorenzo@kernel.org>
 <0b05b08d4579b017dd96869d1329cd82801bd803.1674737592.git.lorenzo@kernel.org>
 <Y9LIPaojtpTjYlNu@google.com> <Y9QJQHq8X9HZxoW3@lore-desk>
 <CAKH8qBv9wKzkW8Qk+hDKCmROKem6ajkqhF_KRqdEKWSLL6_HsA@mail.gmail.com>
 <874jsblv9h.fsf@toke.dk> <Y9QQxMIVd+1chwm3@lore-desk>
In-Reply-To: <Y9QQxMIVd+1chwm3@lore-desk>
From: Stanislav Fomichev <sdf@google.com>
Date: Fri, 27 Jan 2023 09:59:42 -0800
Message-ID: <CAKH8qBsiPNdcPf-20+kKJDpPjLOs=CTvVcNPMAdebJZPQad_qw@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=SGRZU6sBKdHYY98vV9P0PZ2VeWaRqM0+iBCYc+44H+M=;
 b=IVFA7hgzBOccvXL/T3nj1r7vg8OyzJbfnFwW/Pu6Twv5vp2nH753sjqOaqqKVkzINN
 LSMpYJbydQ1Ov62v7oQyXisa0xU5welOAZmy0WpxvOhrorcjhodHKMKUKajqlU+Ycjy6
 4IjsFoROanZP0aKvhloB+My0Ai6w44jymWvE6vKmkoBDyuKmYesesajGL+XbKl45SQM6
 KckYXQT7DUceOHVeZJK4z8fBZlnAQBXFXtOyaxr+6Rbdofdiv9b6cie/JnP80S97X4cq
 BXyUcSpnfHRRZVE9RWIRS1vcXxaFEagkTsgQPXkuWML0RUwKE/eREVzaoT5On0JM/H4R
 fJjQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=IVFA7hgz
Subject: Re: [Intel-wired-lan] [PATCH v3 bpf-next 8/8] selftests/bpf:
 introduce XDP compliance test tool
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
 kuba@kernel.org, pabeni@redhat.com, aelior@marvell.com, hawk@kernel.org,
 christophe.jaillet@wanadoo.fr, memxor@gmail.com, john@phrozen.org,
 bjorn@kernel.org, bpf@vger.kernel.org, magnus.karlsson@intel.com,
 leon@kernel.org, netdev@vger.kernel.org,
 =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@redhat.com>,
 martin.lau@linux.dev, ecree.xilinx@gmail.com, alardam@gmail.com,
 gospo@broadcom.com, saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 27, 2023 at 9:58 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> On Jan 27, Toke wrote:
> > Stanislav Fomichev <sdf@google.com> writes:
> >
> > >> > > +
> > >> > > +   ctrl_sockfd = accept(sockfd, (struct sockaddr *)&ctrl_addr, &len);
> > >> > > +   if (ctrl_sockfd < 0) {
> > >> > > +           fprintf(stderr, "Failed to accept connection on DUT socket\n");
> > >> > > +           close(sockfd);
> > >> > > +           return -errno;
> > >> > > +   }
> > >> > > +
> > >>
> > >> [...]
> > >>
> > >> >
> > >> > There is also connect_to_fd, maybe we can use that? It should take
> > >> > care of the timeouts.. (requires plumbing server_fd, not sure whether
> > >> > it's a problem or not)
> > >>
> > >> please correct me if I am wrong, but in order to have server_fd it is mandatory
> > >> both tester and DUT are running on the same process, right? Here, I guess 99% of
> > >> the times DUT and tester will run on two separated devices. Agree?
> > >
> > > Yes, it's targeting more the case where you have a server fd and a
> > > bunch of clients in the same process. But I think it's still usable in
> > > your case, you're not using fork() anywhere afaict, so even if these
> > > are separate devices, connect_to_fd should still work. (unless I'm
> > > missing something, haven't looked too closely)
> >
> > Just to add a bit of context here, "separate devices" can refer to the
> > hosts as well as the netdevs. I.e., it should also be possible to run
> > this in a mode where the client bit runs on a different physical machine
> > than the server bit (as it will not be feasible in any case to connect
> > things with loopback cables).
>
> yes, this is what I meant with 'DUT and tester will run on two separated
> devices' (sorry to have not been so clear). Looking at the code server_fd
> is always obtained from start_server(), while here the client on the tester
> just knows the IPv4/IPv6 address and the port of the server running on the DUT.

Ah, in this case yeah, definitely, connect_to_fd can't be applied
here, ignore me.
Thanks for clarifying! In this case let's just make the tool dualstack aware.

> Regards,
> Lorenzo
>
> >
> > -Toke
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
