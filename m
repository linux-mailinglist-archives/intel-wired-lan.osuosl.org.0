Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA0F681F33
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 00:00:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E461821B1;
	Mon, 30 Jan 2023 23:00:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E461821B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675119611;
	bh=Q+vQ2R6YlBCHrnBh5PWFHCInDTGBJ8Ml0OZjudLrdr8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z8sQkraTb9JVude9npw0czj3YfQlarA2hJ5GXxJe54Y7CsnJAZTbk8XBmP7Lb3G/b
	 ZLLyI0qrlXfe9TfGENV0J3Aq/tKhhOB2YEze1ZEeuV+EGks95DUC41edopzWFoF8XQ
	 yo/Pni3aN2sYdeUDvXycpSlshObX7/NzOu/cD3LFVIv/wJ425FQWqa/ePPXpePfgfs
	 g2Qi/p3N8MmM6Tc3fFKP13c1EmVsNm5wd1hBs6w9tYYj+wrtwqzoDibrhT8jJ7C5TC
	 8NbglY8/Ms2SNne3J+l6UibSLX0ujVkZ3GIMAr6mO0cgnp6XiD21vh4lSM7YQET9pm
	 90PWC/IKk2i7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28sMNfInkaxx; Mon, 30 Jan 2023 23:00:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 75F4A8218C;
	Mon, 30 Jan 2023 23:00:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75F4A8218C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E7B2A1BF41F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 23:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD97E416E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 23:00:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD97E416E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vea8G0bAl-uE for <intel-wired-lan@lists.osuosl.org>;
 Mon, 30 Jan 2023 23:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 474A2415C1
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 474A2415C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 30 Jan 2023 23:00:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 19B1161303;
 Mon, 30 Jan 2023 23:00:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EACC0C433D2;
 Mon, 30 Jan 2023 22:59:58 +0000 (UTC)
Date: Mon, 30 Jan 2023 23:59:55 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Stanislav Fomichev <sdf@google.com>
Message-ID: <Y9hL6xCG1aYRAafB@lore-desk>
References: <cover.1674913191.git.lorenzo@kernel.org>
 <a7eaa7e3e4c0a7e70f68c32314a7f75c9bba4465.1674913191.git.lorenzo@kernel.org>
 <Y9gTqLioeJS09Jv8@google.com>
MIME-Version: 1.0
In-Reply-To: <Y9gTqLioeJS09Jv8@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1675119599;
 bh=xsokGum/GZsJk+qvQ91yDVXJVs3mCP95EPMlizmOTZQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=doVokW7bqHmj5aNW+XWn0nI125mKjAPLh13EuqomVddVZDOWYhAc0Uo/T4l2G/bOm
 33lduby5frtp9/RSWjdwsDrLO8ZIN4zU0ptIP8KsA2TKslyMoT36ZKsC4w2BxMps/0
 EFIuoLBnXhls8jJpqWPhusiF7iqKHOf+D7BAajrSP3fZfztbscy3YE6c7d4v1irSmV
 8drFO13w9UZ3N3zfbDc8utkTrEGk0M4wyM/ETtMyeJBPRHEcVKNiO1Abm6FvN2KXV5
 b8Jc5nRx1CGxlHlSL7IYFTVnsCz+kiwRgg8Sj7xpfX+IuqXCrMyYIg2WDttYkjzucz
 5Xzy3mesC0YTQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=doVokW7b
Subject: Re: [Intel-wired-lan] [PATCH v4 bpf-next 8/8] selftests/bpf:
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
Content-Type: multipart/mixed; boundary="===============4555125239413883941=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


--===============4555125239413883941==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="75WAx5iEIO5HmaCc"
Content-Disposition: inline


--75WAx5iEIO5HmaCc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[...]
> > +static error_t parse_arg(int key, char *arg, struct argp_state *state)
> > +{
> > +	switch (key) {
> > +	case '6':
> > +		env.family =3D AF_INET6;
> > +		break;
>=20
> Thanks for making the changes! Since you're doing another respin to
> address Alexei's feedback, maybe one thing we can also improve here
> regarding v4-v6? Optionally, up to you, but IMO, it's much easier
> to hard-code AF_INET6 everywhere:
>=20
> socket(AF_INET6, ...)
> inet_pton(AF_INET6, ...)
> ...
>=20
> And then, if you want to use v4 by default, use '::ffff:127.0.0.1' as
> the address. If the users need to use it with some other v4, they can also
> pass the v4-mapped v6 address.
>=20
> Up to you on whether to implement it or not, feel free to ignore me,
> but IMO, that should avoid a lot of those env.family arguments and
> making special cases for v4. Plus also removes the need for -6 argument.
>=20
> The following would work:
> ./xdp_features ::ffff::<ipv4>
> ./xdp_features <ipv6>
>=20
> (I'm assuming nothing runs exclusive non-dualstack v4 envs anymore)

ack, I am fine with it. I think the code would be simpler and easier to rea=
d.
I will fix it in the next version.

Regards,
Lorenzo

>=20
> > +	case 'v':
> > +		env.verbosity =3D true;
> > +		break;
> > +	case 't':
> > +		env.is_tester =3D true;
> > +		break;
> > +	case 'f':
> > +		env.feature =3D get_xdp_feature(arg);
> > +		if (env.feature < 0) {
> > +			fprintf(stderr, "Invalid xdp feature: %s\n", arg);
> > +			argp_usage(state);
> > +			return ARGP_ERR_UNKNOWN;
> > +		}
> > +		break;
> > +	case 'D':
> > +		if (make_sockaddr(env.family, arg, DUT_ECHO_PORT,
> > +				  &env.dut.addr, &env.dut.addrlen)) {
> > +			fprintf(stderr, "Invalid DUT address: %s\n", arg);
> > +			return ARGP_ERR_UNKNOWN;
> > +		}
> > +		break;
> > +	case 'C':
> > +		if (make_sockaddr(env.family, arg, DUT_CTRL_PORT,
> > +				  &env.dut_ctrl.addr, &env.dut_ctrl.addrlen)) {
> > +			fprintf(stderr, "Invalid DUT CTRL address: %s\n", arg);
> > +			return ARGP_ERR_UNKNOWN;
> > +		}
> > +		break;
> > +	case 'T':
> > +		if (make_sockaddr(env.family, arg, 0, &env.tester.addr,
> > +				  &env.tester.addrlen)) {
> > +			fprintf(stderr, "Invalid Tester address: %s\n", arg);
> > +			return ARGP_ERR_UNKNOWN;
> > +		}
> > +		break;
> > +	case ARGP_KEY_ARG:
> > +		errno =3D 0;
> > +		if (strlen(arg) >=3D IF_NAMESIZE) {
> > +			fprintf(stderr, "Invalid device name: %s\n", arg);
> > +			argp_usage(state);
> > +			return ARGP_ERR_UNKNOWN;
> > +		}
> > +
> > +		env.ifindex =3D if_nametoindex(arg);
> > +		if (!env.ifindex)
> > +			env.ifindex =3D strtoul(arg, NULL, 0);
> > +		if (!env.ifindex) {
> > +			fprintf(stderr,
> > +				"Bad interface index or name (%d): %s\n",
> > +				errno, strerror(errno));
> > +			argp_usage(state);
> > +			return ARGP_ERR_UNKNOWN;
> > +		}
> > +		break;
> > +	default:
> > +		return ARGP_ERR_UNKNOWN;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct argp argp =3D {
> > +	.options =3D opts,
> > +	.parser =3D parse_arg,
> > +	.doc =3D argp_program_doc,
> > +};
> > +
> > +static void set_env_defaul(void)
> > +{
> > +	env.feature =3D XDP_FEATURE_PASS;
> > +	env.ifindex =3D -ENODEV;
> > +	env.family =3D AF_INET;
> > +	make_sockaddr(AF_INET, "127.0.0.1", DUT_CTRL_PORT, &env.dut_ctrl.addr,
> > +		      &env.dut_ctrl.addrlen);
> > +	make_sockaddr(AF_INET, "127.0.0.1", DUT_ECHO_PORT, &env.dut.addr,
> > +		      &env.dut.addrlen);
> > +	make_sockaddr(AF_INET, "127.0.0.1", 0, &env.tester.addr,
> > +		      &env.tester.addrlen);
> > +}
> > +
> > +static void *dut_echo_thread(void *arg)
> > +{
> > +	unsigned char buf[sizeof(struct tlv_hdr)];
> > +	int sockfd =3D *(int *)arg;
> > +
> > +	while (!exiting) {
> > +		struct tlv_hdr *tlv =3D (struct tlv_hdr *)buf;
> > +		struct sockaddr_storage addr;
> > +		socklen_t addrlen;
> > +		size_t n;
> > +
> > +		n =3D recvfrom(sockfd, buf, sizeof(buf), MSG_WAITALL,
> > +			     (struct sockaddr *)&addr, &addrlen);
> > +		if (n !=3D ntohs(tlv->len))
> > +			continue;
> > +
> > +		if (ntohs(tlv->type) !=3D CMD_ECHO)
> > +			continue;
> > +
> > +		sendto(sockfd, buf, sizeof(buf), MSG_NOSIGNAL | MSG_CONFIRM,
> > +		       (struct sockaddr *)&addr, addrlen);
> > +	}
> > +
> > +	pthread_exit((void *)0);
> > +	close(sockfd);
> > +
> > +	return NULL;
> > +}
> > +
> > +static int dut_run_echo_thread(pthread_t *t, int *sockfd)
> > +{
> > +	int err;
> > +
> > +	sockfd =3D start_reuseport_server(env.family, SOCK_DGRAM, NULL,
> > +					DUT_ECHO_PORT, 0, 1);
> > +	if (!sockfd) {
> > +		fprintf(stderr, "Failed to create echo socket\n");
> > +		return -errno;
> > +	}
> > +
> > +	/* start echo channel */
> > +	err =3D pthread_create(t, NULL, dut_echo_thread, sockfd);
> > +	if (err) {
> > +		fprintf(stderr, "Failed creating dut_echo thread: %s\n",
> > +			strerror(-err));
> > +		free_fds(sockfd, 1);
> > +		return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int dut_attach_xdp_prog(struct xdp_features *skel, int feature,
> > +			       int flags)
> > +{
> > +	struct bpf_program *prog;
> > +	unsigned int key =3D 0;
> > +	int err, fd =3D 0;
> > +
> > +	switch (feature) {
> > +	case XDP_FEATURE_TX:
> > +		prog =3D skel->progs.xdp_do_tx;
> > +		break;
> > +	case XDP_FEATURE_DROP:
> > +		prog =3D skel->progs.xdp_do_drop;
> > +		break;
> > +	case XDP_FEATURE_ABORTED:
> > +		prog =3D skel->progs.xdp_do_aborted;
> > +		break;
> > +	case XDP_FEATURE_PASS:
> > +		prog =3D skel->progs.xdp_do_pass;
> > +		break;
> > +	case XDP_FEATURE_NDO_XMIT: {
> > +		struct bpf_devmap_val entry =3D {
> > +			.ifindex =3D env.ifindex,
> > +		};
> > +
> > +		err =3D bpf_map__update_elem(skel->maps.dev_map,
> > +					   &key, sizeof(key),
> > +					   &entry, sizeof(entry), 0);
> > +		if (err < 0)
> > +			return err;
> > +
> > +		fd =3D bpf_program__fd(skel->progs.xdp_do_redirect_cpumap);
> > +	}
> > +	case XDP_FEATURE_REDIRECT: {
> > +		struct bpf_cpumap_val entry =3D {
> > +			.qsize =3D 2048,
> > +			.bpf_prog.fd =3D fd,
> > +		};
> > +
> > +		err =3D bpf_map__update_elem(skel->maps.cpu_map,
> > +					   &key, sizeof(key),
> > +					   &entry, sizeof(entry), 0);
> > +		if (err < 0)
> > +			return err;
> > +
> > +		prog =3D skel->progs.xdp_do_redirect;
> > +		break;
> > +	}
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	err =3D bpf_xdp_attach(env.ifindex, bpf_program__fd(prog), flags, NUL=
L);
> > +	if (err)
> > +		fprintf(stderr,
> > +			"Failed to attach XDP program to ifindex %d\n",
> > +			env.ifindex);
> > +	return err;
> > +}
> > +
> > +static int __recv_msg(int sockfd, void *buf, size_t bufsize,
> > +		      unsigned int *val, unsigned int val_size)
> > +{
> > +	struct tlv_hdr *tlv =3D (struct tlv_hdr *)buf;
> > +	int len, n =3D sizeof(*tlv), i =3D 0;
> > +
> > +	len =3D recv(sockfd, buf, bufsize, 0);
> > +	if (len !=3D ntohs(tlv->len))
> > +		return -EINVAL;
> > +
> > +	while (n < len && i < val_size) {
> > +		val[i] =3D ntohl(tlv->data[i]);
> > +		n +=3D sizeof(tlv->data[0]);
> > +		i++;
> > +	}
> > +
> > +	return i;
> > +}
> > +
> > +static int recv_msg(int sockfd, void *buf, size_t bufsize)
> > +{
> > +	return __recv_msg(sockfd, buf, bufsize, NULL, 0);
> > +}
> > +
> > +static int dut_run(struct xdp_features *skel)
> > +{
> > +	int flags =3D XDP_FLAGS_UPDATE_IF_NOEXIST | XDP_FLAGS_DRV_MODE;
> > +	int state, err, *sockfd, ctrl_sockfd, echo_sockfd;
> > +	struct sockaddr_storage ctrl_addr;
> > +	pthread_t dut_thread;
> > +	socklen_t addrlen;
> > +
> > +	sockfd =3D start_reuseport_server(env.family, SOCK_STREAM, NULL,
> > +					DUT_CTRL_PORT, 0, 1);
> > +	if (!sockfd) {
> > +		fprintf(stderr, "Failed to create DUT socket\n");
> > +		return -errno;
> > +	}
> > +
> > +	ctrl_sockfd =3D accept(*sockfd, (struct sockaddr *)&ctrl_addr, &addrl=
en);
> > +	if (ctrl_sockfd < 0) {
> > +		fprintf(stderr, "Failed to accept connection on DUT socket\n");
> > +		free_fds(sockfd, 1);
> > +		return -errno;
> > +	}
> > +
> > +	/* CTRL loop */
> > +	while (!exiting) {
> > +		unsigned char buf[BUFSIZE] =3D {};
> > +		struct tlv_hdr *tlv =3D (struct tlv_hdr *)buf;
> > +
> > +		err =3D recv_msg(ctrl_sockfd, buf, BUFSIZE);
> > +		if (err)
> > +			continue;
> > +
> > +		switch (ntohs(tlv->type)) {
> > +		case CMD_START: {
> > +			if (state =3D=3D CMD_START)
> > +				continue;
> > +
> > +			state =3D CMD_START;
> > +			/* Load the XDP program on the DUT */
> > +			err =3D dut_attach_xdp_prog(skel, ntohl(tlv->data[0]), flags);
> > +			if (err)
> > +				goto out;
> > +
> > +			err =3D dut_run_echo_thread(&dut_thread, &echo_sockfd);
> > +			if (err < 0)
> > +				goto out;
> > +
> > +			tlv->type =3D htons(CMD_ACK);
> > +			tlv->len =3D htons(sizeof(*tlv));
> > +			err =3D send(ctrl_sockfd, buf, sizeof(*tlv), 0);
> > +			if (err < 0)
> > +				goto end_thread;
> > +			break;
> > +		}
> > +		case CMD_STOP:
> > +			if (state !=3D CMD_START)
> > +				break;
> > +
> > +			state =3D CMD_STOP;
> > +
> > +			exiting =3D true;
> > +			bpf_xdp_detach(env.ifindex, flags, NULL);
> > +
> > +			tlv->type =3D htons(CMD_ACK);
> > +			tlv->len =3D htons(sizeof(*tlv));
> > +			err =3D send(ctrl_sockfd, buf, sizeof(*tlv), 0);
> > +			goto end_thread;
> > +		case CMD_GET_XDP_CAP: {
> > +			LIBBPF_OPTS(bpf_xdp_query_opts, opts);
> > +			size_t n;
> > +
> > +			err =3D bpf_xdp_query(env.ifindex, XDP_FLAGS_DRV_MODE,
> > +					    &opts);
> > +			if (err) {
> > +				fprintf(stderr,
> > +					"Failed to query XDP cap for ifindex %d\n",
> > +					env.ifindex);
> > +				goto end_thread;
> > +			}
> > +
> > +			tlv->type =3D htons(CMD_ACK);
> > +			n =3D sizeof(*tlv) + sizeof(opts.feature_flags);
> > +			tlv->len =3D htons(n);
> > +			tlv->data[0] =3D htonl(opts.feature_flags);
> > +
> > +			err =3D send(ctrl_sockfd, buf, n, 0);
> > +			if (err < 0)
> > +				goto end_thread;
> > +			break;
> > +		}
> > +		case CMD_GET_STATS: {
> > +			unsigned int key =3D 0, val;
> > +			size_t n;
> > +
> > +			err =3D bpf_map__lookup_elem(skel->maps.dut_stats,
> > +						   &key, sizeof(key),
> > +						   &val, sizeof(val), 0);
> > +			if (err) {
> > +				fprintf(stderr, "bpf_map_lookup_elem failed\n");
> > +				goto end_thread;
> > +			}
> > +
> > +			tlv->type =3D htons(CMD_ACK);
> > +			n =3D sizeof(*tlv) + sizeof(val);
> > +			tlv->len =3D htons(n);
> > +			tlv->data[0] =3D htonl(val);
> > +
> > +			err =3D send(ctrl_sockfd, buf, n, 0);
> > +			if (err < 0)
> > +				goto end_thread;
> > +			break;
> > +		}
> > +		default:
> > +			break;
> > +		}
> > +	}
> > +
> > +end_thread:
> > +	pthread_join(dut_thread, NULL);
> > +out:
> > +	bpf_xdp_detach(env.ifindex, flags, NULL);
> > +	close(ctrl_sockfd);
> > +	free_fds(sockfd, 1);
> > +
> > +	return err;
> > +}
> > +
> > +static bool tester_collect_advertised_cap(unsigned int cap)
> > +{
> > +	switch (env.feature) {
> > +	case XDP_FEATURE_ABORTED:
> > +	case XDP_FEATURE_DROP:
> > +	case XDP_FEATURE_PASS:
> > +	case XDP_FEATURE_TX:
> > +		return cap & NETDEV_XDP_ACT_BASIC;
> > +	case XDP_FEATURE_REDIRECT:
> > +		return cap & NETDEV_XDP_ACT_REDIRECT;
> > +	case XDP_FEATURE_NDO_XMIT:
> > +		return cap & NETDEV_XDP_ACT_NDO_XMIT;
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> > +static bool tester_collect_detected_cap(struct xdp_features *skel,
> > +					unsigned int dut_stats)
> > +{
> > +	unsigned int err, key =3D 0, val;
> > +
> > +	if (!dut_stats)
> > +		return false;
> > +
> > +	err =3D bpf_map__lookup_elem(skel->maps.stats, &key, sizeof(key),
> > +				   &val, sizeof(val), 0);
> > +	if (err) {
> > +		fprintf(stderr, "bpf_map_lookup_elem failed\n");
> > +		return false;
> > +	}
> > +
> > +	switch (env.feature) {
> > +	case XDP_FEATURE_PASS:
> > +	case XDP_FEATURE_TX:
> > +	case XDP_FEATURE_REDIRECT:
> > +	case XDP_FEATURE_NDO_XMIT:
> > +		return val > 0;
> > +	case XDP_FEATURE_DROP:
> > +	case XDP_FEATURE_ABORTED:
> > +		return val =3D=3D 0;
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> > +static int __send_and_recv_msg(int sockfd, enum test_commands cmd,
> > +			       unsigned int *val, unsigned int val_size)
> > +{
> > +	unsigned char buf[BUFSIZE] =3D {};
> > +	struct tlv_hdr *tlv =3D (struct tlv_hdr *)buf;
> > +	int n =3D sizeof(*tlv), err;
> > +
> > +	tlv->type =3D htons(cmd);
> > +	switch (cmd) {
> > +	case CMD_START:
> > +		tlv->data[0] =3D htonl(env.feature);
> > +		n +=3D sizeof(*val);
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +	tlv->len =3D htons(n);
> > +
> > +	err =3D send(sockfd, buf, n, 0);
> > +	if (err < 0)
> > +		return err;
> > +
> > +	err =3D __recv_msg(sockfd, buf, BUFSIZE, val, val_size);
> > +	if (err < 0)
> > +		return err;
> > +
> > +	return ntohs(tlv->type) =3D=3D CMD_ACK ? 0 : -EINVAL;
> > +}
> > +
> > +static int send_and_recv_msg(int sockfd, enum test_commands cmd)
> > +{
> > +	return __send_and_recv_msg(sockfd, cmd, NULL, 0);
> > +}
> > +
> > +static int send_echo_msg(void)
> > +{
> > +	unsigned char buf[sizeof(struct tlv_hdr)];
> > +	struct tlv_hdr *tlv =3D (struct tlv_hdr *)buf;
> > +	int sockfd, n;
> > +
> > +	sockfd =3D socket(env.family, SOCK_DGRAM, 0);
> > +	if (sockfd < 0) {
> > +		fprintf(stderr, "Failed to create echo socket\n");
> > +		return -errno;
> > +	}
> > +
> > +	tlv->type =3D htons(CMD_ECHO);
> > +	tlv->len =3D htons(sizeof(*tlv));
> > +
> > +	n =3D sendto(sockfd, buf, sizeof(*tlv), MSG_NOSIGNAL | MSG_CONFIRM,
> > +		   (struct sockaddr *)&env.dut.addr, env.dut.addrlen);
> > +	close(sockfd);
> > +
> > +	return n =3D=3D ntohs(tlv->len) ? 0 : -EINVAL;
> > +}
> > +
> > +static int tester_run(struct xdp_features *skel)
> > +{
> > +	int flags =3D XDP_FLAGS_UPDATE_IF_NOEXIST | XDP_FLAGS_DRV_MODE;
> > +	bool advertised_cap;
> > +	unsigned int val[1];
> > +	int i, err, sockfd;
> > +	bool detected_cap;
> > +
> > +	sockfd =3D socket(env.family, SOCK_STREAM, 0);
> > +	if (sockfd < 0) {
> > +		fprintf(stderr, "Failed to create tester socket\n");
> > +		return -errno;
> > +	}
> > +
> > +	if (settimeo(sockfd, 1000) < 0)
> > +		return -EINVAL;
> > +
> > +	err =3D connect(sockfd, (struct sockaddr *)&env.dut_ctrl.addr,
> > +		      env.dut_ctrl.addrlen);
> > +	if (err) {
> > +		fprintf(stderr, "Failed to connect to the DUT\n");
> > +		return -errno;
> > +	}
> > +
> > +	err =3D __send_and_recv_msg(sockfd, CMD_GET_XDP_CAP, val,
> > +				  ARRAY_SIZE(val));
> > +	if (err < 0) {
> > +		close(sockfd);
> > +		return err;
> > +	}
> > +
> > +	advertised_cap =3D tester_collect_advertised_cap(val[0]);
> > +
> > +	err =3D bpf_xdp_attach(env.ifindex,
> > +			     bpf_program__fd(skel->progs.xdp_tester),
> > +			     flags, NULL);
> > +	if (err) {
> > +		fprintf(stderr, "Failed to attach XDP program to ifindex %d\n",
> > +			env.ifindex);
> > +		goto out;
> > +	}
> > +
> > +	err =3D send_and_recv_msg(sockfd, CMD_START);
> > +	if (err)
> > +		goto out;
> > +
> > +	for (i =3D 0; i < 10 && !exiting; i++) {
> > +		err =3D send_echo_msg();
> > +		if (err < 0)
> > +			goto out;
> > +
> > +		sleep(1);
> > +	}
> > +
> > +	err =3D __send_and_recv_msg(sockfd, CMD_GET_STATS, val, ARRAY_SIZE(va=
l));
> > +	if (err)
> > +		goto out;
> > +
> > +	/* stop the test */
> > +	err =3D send_and_recv_msg(sockfd, CMD_STOP);
> > +	/* send a new echo message to wake echo thread of the dut */
> > +	send_echo_msg();
> > +
> > +	detected_cap =3D tester_collect_detected_cap(skel, val[0]);
> > +
> > +	fprintf(stdout, "Feature %s: [%s][%s]\n",
> > get_xdp_feature_str(env.feature),
> > +		detected_cap ? GREEN("DETECTED") : RED("NOT DETECTED"),
> > +		advertised_cap ? GREEN("ADVERTISED") : RED("NOT ADVERTISED"));
> > +out:
> > +	bpf_xdp_detach(env.ifindex, flags, NULL);
> > +	close(sockfd);
> > +	return err < 0 ? err : 0;
> > +}
> > +
> > +static void set_skel_rodata(struct xdp_features *skel)
> > +{
> > +	skel->rodata->expected_feature =3D env.feature;
> > +	if (env.family =3D=3D AF_INET6) {
> > +		struct sockaddr_in6 *tester_addr =3D (void *)&env.tester.addr;
> > +		struct sockaddr_in6 *dut_addr =3D (void *)&env.dut.addr;
> > +
> > +		skel->rodata->tester_addr.ip6 =3D tester_addr->sin6_addr;
> > +		skel->rodata->dut_addr.ip6 =3D dut_addr->sin6_addr;
> > +	} else {
> > +		struct sockaddr_in *tester_addr =3D (void *)&env.tester.addr;
> > +		struct sockaddr_in *dut_addr =3D (void *)&env.dut.addr;
> > +
> > +		skel->rodata->tester_addr.ip =3D tester_addr->sin_addr;
> > +		skel->rodata->dut_addr.ip =3D dut_addr->sin_addr;
> > +	}
> > +}
> > +
> > +int main(int argc, char **argv)
> > +{
> > +	struct xdp_features *skel;
> > +	int err;
> > +
> > +	libbpf_set_strict_mode(LIBBPF_STRICT_ALL);
> > +	libbpf_set_print(libbpf_print_fn);
> > +
> > +	signal(SIGINT, sig_handler);
> > +	signal(SIGTERM, sig_handler);
> > +
> > +	set_env_defaul();
> > +
> > +	/* Parse command line arguments */
> > +	err =3D argp_parse(&argp, argc, argv, 0, NULL, NULL);
> > +	if (err)
> > +		return err;
> > +
> > +	if (env.ifindex < 0) {
> > +		fprintf(stderr, "Invalid ifindex\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	/* Load and verify BPF application */
> > +	skel =3D xdp_features__open();
> > +	if (!skel) {
> > +		fprintf(stderr, "Failed to open and load BPF skeleton\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	set_skel_rodata(skel);
> > +
> > +	/* Load & verify BPF programs */
> > +	err =3D xdp_features__load(skel);
> > +	if (err) {
> > +		fprintf(stderr, "Failed to load and verify BPF skeleton\n");
> > +		goto cleanup;
> > +	}
> > +
> > +	err =3D xdp_features__attach(skel);
> > +	if (err) {
> > +		fprintf(stderr, "Failed to attach BPF skeleton\n");
> > +		goto cleanup;
> > +	}
> > +
> > +	if (env.is_tester) {
> > +		/* Tester */
> > +		fprintf(stdout, "Starting tester on device %d\n", env.ifindex);
> > +		err =3D tester_run(skel);
> > +	} else {
> > +		/* DUT */
> > +		fprintf(stdout, "Starting DUT on device %d\n", env.ifindex);
> > +		err =3D dut_run(skel);
> > +	}
> > +
> > +cleanup:
> > +	xdp_features__destroy(skel);
> > +
> > +	return err < 0 ? -err : 0;
> > +}
> > diff --git a/tools/testing/selftests/bpf/xdp_features.h
> > b/tools/testing/selftests/bpf/xdp_features.h
> > new file mode 100644
> > index 000000000000..28d7614c4f02
> > --- /dev/null
> > +++ b/tools/testing/selftests/bpf/xdp_features.h
> > @@ -0,0 +1,33 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +
> > +/* test commands */
> > +enum test_commands {
> > +	CMD_STOP,		/* CMD */
> > +	CMD_START,		/* CMD + xdp feature */
> > +	CMD_ECHO,		/* CMD */
> > +	CMD_ACK,		/* CMD + data */
> > +	CMD_GET_XDP_CAP,	/* CMD */
> > +	CMD_GET_STATS,		/* CMD */
> > +};
> > +
> > +#define DUT_CTRL_PORT	12345
> > +#define DUT_ECHO_PORT	12346
> > +
> > +struct tlv_hdr {
> > +	__be16 type;
> > +	__be16 len;
> > +	__be32 data[];
> > +};
> > +
> > +enum {
> > +	XDP_FEATURE_ABORTED,
> > +	XDP_FEATURE_DROP,
> > +	XDP_FEATURE_PASS,
> > +	XDP_FEATURE_TX,
> > +	XDP_FEATURE_REDIRECT,
> > +	XDP_FEATURE_NDO_XMIT,
> > +	XDP_FEATURE_XSK_ZEROCOPY,
> > +	XDP_FEATURE_HW_OFFLOAD,
> > +	XDP_FEATURE_RX_SG,
> > +	XDP_FEATURE_NDO_XMIT_SG,
> > +};
> > --
> > 2.39.1
>=20

--75WAx5iEIO5HmaCc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCY9hL6wAKCRA6cBh0uS2t
rD19AQDk7ISbqySCOD7YnGrb7GS4MxEYrvCiU2hAEYfzZDxBywD+MMVTANt/J+LY
sNHO/MI9Yu29hysw2Xpcs20gZMnTuQ4=
=+u80
-----END PGP SIGNATURE-----

--75WAx5iEIO5HmaCc--

--===============4555125239413883941==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============4555125239413883941==--
