Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C49267ECAA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jan 2023 18:41:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1385429E2;
	Fri, 27 Jan 2023 17:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1385429E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674841286;
	bh=hHPn56bYe/nXFortiXLEUr/yTweee67Y0vlPAzYWBDQ=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gbBiruYe2oJcWA0iRUljQNHXA6Dswfd7dKhz1p8XVEN4+A7c10gLAHpk29YZznhBg
	 mXZz7VAzBfAsXD8gog+3z0glw/v6/gbLFsy8KxJPZHYeu9QVAVtWiOhGWwi4rjp34C
	 TCzjUq7C/cC0ohaWqJuaG9tlh9xuUhE+qrCp0kGttVcGcvswdWXIiWTtVCvwVYw03I
	 sVYyEMkeJvo6ymhTIYtiAQ0Z/XWT43Y2Aj/xPNhn7kLq5cx8cVePTO9ttnWjMVzsnP
	 q3my/w4SsVG7M72W+bDgoiT6HNHCsQPT8LXW10ssZTEaYhvUDurj8S8yAlogO2WVLL
	 zPQ0YtNKGFyaQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kxyejgE2EDuV; Fri, 27 Jan 2023 17:41:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FD0D41D0C;
	Fri, 27 Jan 2023 17:41:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9FD0D41D0C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D98B41BF239
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:41:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE0B8830C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:41:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE0B8830C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XAUTwm8QFvky for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jan 2023 17:41:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E30E83096
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com
 [IPv6:2607:f8b0:4864:20::1031])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9E30E83096
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 17:41:17 +0000 (UTC)
Received: by mail-pj1-x1031.google.com with SMTP id
 nm12-20020a17090b19cc00b0022c2155cc0bso5405333pjb.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jan 2023 09:41:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=vaFfeyznNWWLniOTpc7LIMcZgLL/w0JJguh0UKjmu2k=;
 b=Fe7PTgNs3/IX9Cy6zEz2kX7JimS4/JEROvFCrVfV6VGljztUL8q8zIig3SE74EKKMe
 J/m6Nmbtj/+jPWycLaTV4et6iJSLpW8n1E6D5dabz6g/t7wcjBFfNF5miRZ/3fjYQdHq
 k26LZ1aRh5ckEUC+suo78BgYlYKDpJpk4QQjrYWw8gXzlQSa+ahtF+KMYCVU1DpLprfm
 ARXzxGwwcDmzyuTGRD1MsNGkU36uHEOTTirJqHPiyyFcU3atVjpG1l7eU6ZH1hWiQ5vw
 aK4kZg9XLBJ8eNKoF7JGyrIyIxF+AGdIUSTag7C/Yrztai6o6E9cTkUBKUoFODUG0lkc
 Wqrw==
X-Gm-Message-State: AO0yUKUpmEa9PxvVI2jYt25GGRFXmrH9rvtvc6QxlbbiPsrTK8uiLLQa
 zz1uyermykitTFv8Oz30Ju1Jci5vmA5GS9Cj3Csicw==
X-Google-Smtp-Source: AK7set/tnCuI9RjTvgVvTHoLjEj61ZxaKD287AXcYVYorLt8jMQJgsYq5f4K/2s+DNufIz5TvDgclZumH8e8H3/rz9o=
X-Received: by 2002:a17:902:82c6:b0:196:cca:a0b4 with SMTP id
 u6-20020a17090282c600b001960ccaa0b4mr2381925plz.20.1674841276647; Fri, 27 Jan
 2023 09:41:16 -0800 (PST)
MIME-Version: 1.0
References: <cover.1674737592.git.lorenzo@kernel.org>
 <0b05b08d4579b017dd96869d1329cd82801bd803.1674737592.git.lorenzo@kernel.org>
 <Y9LIPaojtpTjYlNu@google.com> <Y9QJQHq8X9HZxoW3@lore-desk>
In-Reply-To: <Y9QJQHq8X9HZxoW3@lore-desk>
From: Stanislav Fomichev <sdf@google.com>
Date: Fri, 27 Jan 2023 09:41:05 -0800
Message-ID: <CAKH8qBv9wKzkW8Qk+hDKCmROKem6ajkqhF_KRqdEKWSLL6_HsA@mail.gmail.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=vaFfeyznNWWLniOTpc7LIMcZgLL/w0JJguh0UKjmu2k=;
 b=iRHN3MzE1iFEGAMAGuIB6NvnylFL1REExeROTRo7EA9B8whSIprjx/k1HR0+KKgQVu
 eQekjw2VHMl1v/GTlQpGj+HVLNrKWY31ahyDXScS3RRnRixyZUEscuM+QfyQDF4rkL7d
 F8h1lOKUheRaPVXD2QjS6suIkV61eBeQJzB64D8ydA98NPQ5+Qi+K9x1cyAgphBORdT2
 Os387DnSqKBrM7JG+oaQRrr2NxDofndAqUbvHxmUiinn4/AAugk08cpQlW0LFKr4FusA
 9lP7b2bBv2F5GQohWEdnDx4MLZlcN202k5EFq+D7z5p3S+V3asILxNBPGnZpEv63+8B1
 fQCg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=iRHN3MzE
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
 leon@kernel.org, netdev@vger.kernel.org, toke@redhat.com, martin.lau@linux.dev,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jan 27, 2023 at 9:26 AM Lorenzo Bianconi <lorenzo@kernel.org> wrote:
>
> > On 01/26, Lorenzo Bianconi wrote:
>
> [...]
>
> >
> > Why do we need the namespaces? Why not have two veth peers in the
> > current namespace?
>
> I think we can use just a veth pair here, we do not need two, I will fix it.
>
> >
> > (not sure it matters, just wondering)
> >
> > > +ret=1
> > > +
> > > +setup() {
> > > +   {
> > > +           ip netns add ${NS0}
> > > +           ip netns add ${NS1}
> > > +
> > > +           ip link add v01 index 111 type veth peer name v00 netns ${NS0}
> > > +           ip link add v10 index 222 type veth peer name v11 netns ${NS1}
> > > +
> > > +           ip link set v01 up
> > > +           ip addr add 10.10.0.1/24 dev v01
> > > +           ip link set v01 address 00:11:22:33:44:55
> > > +           ip -n ${NS0} link set dev v00 up
> > > +           ip -n ${NS0} addr add 10.10.0.11/24 dev v00
> > > +           ip -n ${NS0} route add default via 10.10.0.1
> > > +           ip -n ${NS0} link set v00 address 00:12:22:33:44:55
> > > +
> > > +           ip link set v10 up
> > > +           ip addr add 10.10.1.1/24 dev v10
> > > +           ip link set v10 address 00:13:22:33:44:55
> > > +           ip -n ${NS1} link set dev v11 up
> > > +           ip -n ${NS1} addr add 10.10.1.11/24 dev v11
> > > +           ip -n ${NS1} route add default via 10.10.1.1
> > > +           ip -n ${NS1} link set v11 address 00:14:22:33:44:55
> > > +
> > > +           sysctl -w net.ipv4.ip_forward=1
> > > +           # Enable XDP mode
> > > +           ethtool -K v01 gro on
> > > +           ethtool -K v01 tx-checksumming off
> > > +           ip netns exec ${NS0} ethtool -K v00 gro on
> > > +           ip netns exec ${NS0} ethtool -K v00 tx-checksumming off
> > > +           ethtool -K v10 gro on
> > > +           ethtool -K v10 tx-checksumming off
> > > +           ip netns exec ${NS1} ethtool -K v11 gro on
> > > +           ip netns exec ${NS1} ethtool -K v11 tx-checksumming off
> > > +   } > /dev/null 2>&1
> > > +}
>
> [...]
> >
> > IIRC, Martin mentioned IPv6 support in the previous version. Should we
> > also make the userspace v6 aware by at least using AF_INET6 dualstack
> > sockets? I feel like listening on inaddr_any with AF_INET6 should
> > get us there without too much pain..
>
> ack, I will fix it.
>
> >
> > > +
> > > +   /* start echo channel */
> > > +   *echo_sockfd = sockfd;
> > > +   err = pthread_create(t, NULL, dut_echo_thread, echo_sockfd);
> > > +   if (err) {
> > > +           fprintf(stderr, "Failed creating dut_echo thread: %s\n",
> > > +                   strerror(-err));
> > > +           close(sockfd);
> > > +           return -EINVAL;
> > > +   }
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int dut_attach_xdp_prog(struct xdp_features *skel, int feature,
> > > +                          int flags)
> > > +{
> > > +   struct bpf_program *prog;
> > > +   unsigned int key = 0;
> > > +   int err, fd = 0;
> > > +
> > > +   switch (feature) {
> > > +   case XDP_FEATURE_TX:
> > > +           prog = skel->progs.xdp_do_tx;
> > > +           break;
> > > +   case XDP_FEATURE_DROP:
> > > +   case XDP_FEATURE_ABORTED:
> > > +           prog = skel->progs.xdp_do_drop;
> > > +           break;
> > > +   case XDP_FEATURE_PASS:
> > > +           prog = skel->progs.xdp_do_pass;
> > > +           break;
> > > +   case XDP_FEATURE_NDO_XMIT: {
> > > +           struct bpf_devmap_val entry = {
> > > +                   .ifindex = env.ifindex,
> > > +           };
> > > +
> > > +           err = bpf_map__update_elem(skel->maps.dev_map,
> > > +                                      &key, sizeof(key),
> > > +                                      &entry, sizeof(entry), 0);
> > > +           if (err < 0)
> > > +                   return err;
> > > +
> > > +           fd = bpf_program__fd(skel->progs.xdp_do_redirect_cpumap);
> > > +   }
> > > +   case XDP_FEATURE_REDIRECT: {
> > > +           struct bpf_cpumap_val entry = {
> > > +                   .qsize = 2048,
> > > +                   .bpf_prog.fd = fd,
> > > +           };
> > > +
> > > +           err = bpf_map__update_elem(skel->maps.cpu_map,
> > > +                                      &key, sizeof(key),
> > > +                                      &entry, sizeof(entry), 0);
> > > +           if (err < 0)
> > > +                   return err;
> > > +
> > > +           prog = skel->progs.xdp_do_redirect;
> > > +           break;
> > > +   }
> > > +   default:
> > > +           return -EINVAL;
> > > +   }
> > > +
> > > +   err = bpf_xdp_attach(env.ifindex, bpf_program__fd(prog), flags, NULL);
> > > +   if (err)
> > > +           fprintf(stderr,
> > > +                   "Failed to attach XDP program to ifindex %d\n",
> > > +                   env.ifindex);
> > > +   return err;
> > > +}
> > > +
> > > +static int __recv_msg(int sockfd, void *buf, size_t bufsize,
> > > +                 unsigned int *val, unsigned int val_size)
> > > +{
> > > +   struct tlv_hdr *tlv = (struct tlv_hdr *)buf;
> > > +   int len, n = sizeof(*tlv), i = 0;
> > > +
> > > +   len = recv(sockfd, buf, bufsize, 0);
> > > +   if (len != ntohs(tlv->len))
> > > +           return -EINVAL;
> > > +
> > > +   while (n < len && i < val_size) {
> > > +           val[i] = ntohl(tlv->data[i]);
> > > +           n += sizeof(tlv->data[0]);
> > > +           i++;
> > > +   }
> > > +
> > > +   return i;
> > > +}
> > > +
> > > +static int recv_msg(int sockfd, void *buf, size_t bufsize)
> > > +{
> > > +   return __recv_msg(sockfd, buf, bufsize, NULL, 0);
> > > +}
> > > +
> > > +static int dut_run(struct xdp_features *skel)
> > > +{
> > > +   int flags = XDP_FLAGS_UPDATE_IF_NOEXIST | XDP_FLAGS_DRV_MODE;
> > > +   int state, err, sockfd, ctrl_sockfd, echo_sockfd, optval = 1;
> > > +   struct sockaddr_in ctrl_addr, addr = {
> > > +           .sin_family = AF_INET,
> > > +           .sin_addr.s_addr = htonl(INADDR_ANY),
> > > +           .sin_port = htons(DUT_CTRL_PORT),
> > > +   };
> > > +   unsigned int len = sizeof(ctrl_addr);
> > > +   pthread_t dut_thread;
> > > +
> >
> > [..]
> >
> > > +   sockfd = socket(AF_INET, SOCK_STREAM, 0);
> > > +   if (sockfd < 0) {
> > > +           fprintf(stderr, "Failed to create DUT socket\n");
> > > +           return -errno;
> > > +   }
> > > +
> > > +   err = setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &optval,
> > > +                    sizeof(optval));
> > > +   if (err < 0) {
> > > +           fprintf(stderr, "Failed sockopt on DUT socket\n");
> > > +           return -errno;
> > > +   }
> > > +
> > > +   err = bind(sockfd, (struct sockaddr *)&addr, sizeof(addr));
> > > +   if (err < 0) {
> > > +           fprintf(stderr, "Failed to bind DUT socket\n");
> > > +           return -errno;
> > > +   }
> > > +
> > > +   err = listen(sockfd, 5);
> > > +   if (err) {
> > > +           fprintf(stderr, "Failed to listen DUT socket\n");
> > > +           return -errno;
> > > +   }
> >
> > Should we use start_server from network_helpers.h here?
>
> ack, I will use it.
>
> >
> > > +
> > > +   ctrl_sockfd = accept(sockfd, (struct sockaddr *)&ctrl_addr, &len);
> > > +   if (ctrl_sockfd < 0) {
> > > +           fprintf(stderr, "Failed to accept connection on DUT socket\n");
> > > +           close(sockfd);
> > > +           return -errno;
> > > +   }
> > > +
>
> [...]
>
> >
> > There is also connect_to_fd, maybe we can use that? It should take
> > care of the timeouts.. (requires plumbing server_fd, not sure whether
> > it's a problem or not)
>
> please correct me if I am wrong, but in order to have server_fd it is mandatory
> both tester and DUT are running on the same process, right? Here, I guess 99% of
> the times DUT and tester will run on two separated devices. Agree?

Yes, it's targeting more the case where you have a server fd and a
bunch of clients in the same process. But I think it's still usable in
your case, you're not using fork() anywhere afaict, so even if these
are separate devices, connect_to_fd should still work. (unless I'm
missing something, haven't looked too closely)

> Regards,
> Lorenzo
>
> >
> > > +
> > > +   if (i == 10) {
> > > +           fprintf(stderr, "Failed to connect to the DUT\n");
> > > +           return -ETIMEDOUT;
> > > +   }
> > > +
> > > +   err = __send_and_recv_msg(sockfd, CMD_GET_XDP_CAP, val,
> > > ARRAY_SIZE(val));
> > > +   if (err < 0) {
> > > +           close(sockfd);
> > > +           return err;
> > > +   }
> > > +
> > > +   advertised_cap = tester_collect_advertised_cap(val[0]);
> > > +
> > > +   err = bpf_xdp_attach(env.ifindex,
> > > +                        bpf_program__fd(skel->progs.xdp_tester),
> > > +                        flags, NULL);
> > > +   if (err) {
> > > +           fprintf(stderr, "Failed to attach XDP program to ifindex %d\n",
> > > +                   env.ifindex);
> > > +           goto out;
> > > +   }
> > > +
> > > +   err = send_and_recv_msg(sockfd, CMD_START);
> > > +   if (err)
> > > +           goto out;
> > > +
> > > +   for (i = 0; i < 10 && !exiting; i++) {
> > > +           err = send_echo_msg();
> > > +           if (err < 0)
> > > +                   goto out;
> > > +
> > > +           sleep(1);
> > > +   }
> > > +
> > > +   err = __send_and_recv_msg(sockfd, CMD_GET_STATS, val, ARRAY_SIZE(val));
> > > +   if (err)
> > > +           goto out;
> > > +
> > > +   /* stop the test */
> > > +   err = send_and_recv_msg(sockfd, CMD_STOP);
> > > +   /* send a new echo message to wake echo thread of the dut */
> > > +   send_echo_msg();
> > > +
> > > +   detected_cap = tester_collect_detected_cap(skel, val[0]);
> > > +
> > > +   fprintf(stdout, "Feature %s: [%s][%s]\n",
> > > get_xdp_feature_str(env.feature),
> > > +           detected_cap ? GREEN("DETECTED") : RED("NOT DETECTED"),
> > > +           advertised_cap ? GREEN("ADVERTISED") : RED("NOT ADVERTISED"));
> > > +out:
> > > +   bpf_xdp_detach(env.ifindex, flags, NULL);
> > > +   close(sockfd);
> > > +   return err < 0 ? err : 0;
> > > +}
> > > +
> > > +int main(int argc, char **argv)
> > > +{
> > > +   struct xdp_features *skel;
> > > +   int err;
> > > +
> > > +   libbpf_set_strict_mode(LIBBPF_STRICT_ALL);
> > > +   libbpf_set_print(libbpf_print_fn);
> > > +
> > > +   signal(SIGINT, sig_handler);
> > > +   signal(SIGTERM, sig_handler);
> > > +
> > > +   set_env_defaul();
> > > +
> > > +   /* Parse command line arguments */
> > > +   err = argp_parse(&argp, argc, argv, 0, NULL, NULL);
> > > +   if (err)
> > > +           return err;
> > > +
> > > +   if (env.ifindex < 0) {
> > > +           fprintf(stderr, "Invalid ifindex\n");
> > > +           return -ENODEV;
> > > +   }
> > > +
> > > +   /* Load and verify BPF application */
> > > +   skel = xdp_features__open();
> > > +   if (!skel) {
> > > +           fprintf(stderr, "Failed to open and load BPF skeleton\n");
> > > +           return -EINVAL;
> > > +   }
> > > +
> > > +   skel->rodata->expected_feature = env.feature;
> > > +   skel->rodata->dut_ip = env.dut_ip;
> > > +   skel->rodata->tester_ip = env.tester_ip;
> > > +
> > > +   /* Load & verify BPF programs */
> > > +   err = xdp_features__load(skel);
> > > +   if (err) {
> > > +           fprintf(stderr, "Failed to load and verify BPF skeleton\n");
> > > +           goto cleanup;
> > > +   }
> > > +
> > > +   err = xdp_features__attach(skel);
> > > +   if (err) {
> > > +           fprintf(stderr, "Failed to attach BPF skeleton\n");
> > > +           goto cleanup;
> > > +   }
> > > +
> > > +   if (env.tester) {
> > > +           /* Tester */
> > > +           fprintf(stdout, "Starting tester on device %d\n", env.ifindex);
> > > +           err = tester_run(skel);
> > > +   } else {
> > > +           /* DUT */
> > > +           fprintf(stdout, "Starting DUT on device %d\n", env.ifindex);
> > > +           err = dut_run(skel);
> > > +   }
> > > +
> > > +cleanup:
> > > +   xdp_features__destroy(skel);
> > > +
> > > +   return err < 0 ? -err : 0;
> > > +}
> > > diff --git a/tools/testing/selftests/bpf/xdp_features.h
> > > b/tools/testing/selftests/bpf/xdp_features.h
> > > new file mode 100644
> > > index 000000000000..28d7614c4f02
> > > --- /dev/null
> > > +++ b/tools/testing/selftests/bpf/xdp_features.h
> > > @@ -0,0 +1,33 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +
> > > +/* test commands */
> > > +enum test_commands {
> > > +   CMD_STOP,               /* CMD */
> > > +   CMD_START,              /* CMD + xdp feature */
> > > +   CMD_ECHO,               /* CMD */
> > > +   CMD_ACK,                /* CMD + data */
> > > +   CMD_GET_XDP_CAP,        /* CMD */
> > > +   CMD_GET_STATS,          /* CMD */
> > > +};
> > > +
> > > +#define DUT_CTRL_PORT      12345
> > > +#define DUT_ECHO_PORT      12346
> > > +
> > > +struct tlv_hdr {
> > > +   __be16 type;
> > > +   __be16 len;
> > > +   __be32 data[];
> > > +};
> > > +
> > > +enum {
> > > +   XDP_FEATURE_ABORTED,
> > > +   XDP_FEATURE_DROP,
> > > +   XDP_FEATURE_PASS,
> > > +   XDP_FEATURE_TX,
> > > +   XDP_FEATURE_REDIRECT,
> > > +   XDP_FEATURE_NDO_XMIT,
> > > +   XDP_FEATURE_XSK_ZEROCOPY,
> > > +   XDP_FEATURE_HW_OFFLOAD,
> > > +   XDP_FEATURE_RX_SG,
> > > +   XDP_FEATURE_NDO_XMIT_SG,
> > > +};
> > > --
> > > 2.39.1
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
