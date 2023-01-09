Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D41B662B1B
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 17:25:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A15398177C;
	Mon,  9 Jan 2023 16:25:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A15398177C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673281513;
	bh=uNeuQqj461eLp5/Ph1IfNuUPaYyW4ZO3LUyB/bsrylI=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=6h4K2mdxxtjE0lHkvJHucZbDW/XsFplWpG6UsGyA5PBDpoTB9vG3V4EpVS6Syv8Y9
	 trWi26Bz9JSV4tyKYPFF2n+HnQoFFLISKnqNh6XWT+ZtHvE3KbYSYTEUNmBKGNYyUk
	 3Ins/8htnoNUeKgO5/91cxtJDTRjCBmxHBrqtXNdKgZ1FF5FKzOUQkvdz12xWQ9IUK
	 Wgt7oe2NFLka1f6atykdwnxXwGbGzUcBUAg7EVrmszm4NPBSQk+zJJq2xeQncT0UU6
	 UvCfpYxPLNefoYwrXpPzCa8qj/poKLSTyEm9EfKptlgv6fNeI+Y6CsHiGpxs7j7ZVi
	 jvASbOS3dcVUw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YVx5fL0Dlxzv; Mon,  9 Jan 2023 16:25:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53C0881490;
	Mon,  9 Jan 2023 16:25:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53C0881490
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A6DFB1BF30E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 08:23:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8D84E40503
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 08:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D84E40503
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GFrB1yWJ_Lmy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jan 2023 08:23:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 219EE400DD
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 219EE400DD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 08:23:23 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 p1-20020a05600c1d8100b003d8c9b191e0so5946642wms.4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Jan 2023 00:23:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a578hTGGRypT8VpwIYUDy4Cpht4E/0RV6MNINJJ/5NI=;
 b=hBCdg3WkxkJLyXFlfQLMC/z/dvQ1HYFzUcUYI4m+dR46tEnA5IhcPzl11YkWROwWtp
 mTAVOdJPOpwNARg6+3Q1+SszcuaVJQ4/pgF7WX5oPAmNAHp6/V5xydhYXJ9NNEQw65N5
 nNL68jaYlqD55gVvYtYdsJrpTa19m9vAKZG7H/ZGMFwL+40kn3f4XinZBH5zeVOHpGzQ
 ft2JpmfvuWYjNvLIMkF6aZ1INtBJead3VoPHg+45LleCdnTtc7auaaGCGTCQ4UVhr1ND
 AdE++AMpEWIniP1+196IGwfKr2YeDxnqsq92z7+ZpFI8SoIwUni/nhCYWhjREyIszlea
 JXuw==
X-Gm-Message-State: AFqh2krEKw8AawzF33N/r+um0aSGYIfxF5EuCSXE8VZkmhA6nSP9ceLn
 9oWGyGdTiYC4oynuePzYHlA=
X-Google-Smtp-Source: AMrXdXsL/AU6JwAaVmqJhPXyAn/AXc9czR/lbQuED6Lk3MKAWZvgQLHXoAuQaOGn1QBy3o50uBwngg==
X-Received: by 2002:a05:600c:1da3:b0:3d2:1761:3742 with SMTP id
 p35-20020a05600c1da300b003d217613742mr47614534wms.15.1673252602129; 
 Mon, 09 Jan 2023 00:23:22 -0800 (PST)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 z25-20020a1c4c19000000b003d1e1f421bfsm14834348wmf.10.2023.01.09.00.23.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jan 2023 00:23:21 -0800 (PST)
Date: Mon, 9 Jan 2023 11:23:18 +0300
From: Dan Carpenter <error27@gmail.com>
To: oe-kbuild@lists.linux.dev,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Message-ID: <202301090023.M6DN1R1S-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Approved-At: Mon, 09 Jan 2023 16:25:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:content-disposition:mime-version
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=a578hTGGRypT8VpwIYUDy4Cpht4E/0RV6MNINJJ/5NI=;
 b=e89qUKg6TbIxQZguGxwx0RUdCaVkQyTvIe0A7dw84u/cFFfqf3bbh3snQNH2tSRPqd
 C1HiJqv4LvlobJv9TZdb99/KSbItt8WlgkjSJ0f+kGJ+/31tJmXQ0fZjrIbMuL1JMOmg
 zXIlH7HZAvqtq4wtU5YPno8UrBP8i2zdWn/6mqk8XECe8gWIx2lqauzAv+TlZzOd/NQ1
 dIOZQCECnEfZ+PN0ObZmDp911EQ2DsVeIXpnXOosfiJ0EKskamYy/YIFwr8eRc9iBTbi
 JY9xmPXiUiYxeUhLxyeTPelg+3MaXZWSeW4XIc0/jG6teYS5Om8OifAumGisAJ+tos9P
 wlmg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=e89qUKg6
Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue 17/18]
 drivers/net/ethernet/intel/i40e/i40e_main.c:13383 i40e_xdp_setup() warn:
 missing error code 'ret'
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>,
 Andrii Staikov <andrii.staikov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-queue.git=
 dev-queue
head:   1504740fc0229fa18e23c48232af1b8ef66608b2
commit: 599984216d420ff4877ba95f5bdb3cf0928206c0 [17/18] i40e: Fix crash wh=
en rebuild fails in i40e_xdp_setup
config: arc-randconfig-m031-20230108
compiler: arceb-elf-gcc (GCC) 12.1.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <error27@gmail.com>

New smatch warnings:
drivers/net/ethernet/intel/i40e/i40e_main.c:13383 i40e_xdp_setup() warn: mi=
ssing error code 'ret'

Old smatch warnings:
drivers/net/ethernet/intel/i40e/i40e_main.c:13573 i40e_queue_pair_toggle_ri=
ngs() warn: missing error code? 'ret'
drivers/net/ethernet/intel/i40e/i40e_main.c:14361 i40e_vsi_setup_vectors() =
warn: missing error code? 'ret'

vim +/ret +13383 drivers/net/ethernet/intel/i40e/i40e_main.c

613142b0bb8840 Eryk Rybak           2021-01-14  13350  static int i40e_xdp_=
setup(struct i40e_vsi *vsi, struct bpf_prog *prog,
613142b0bb8840 Eryk Rybak           2021-01-14  13351  			  struct netlink_=
ext_ack *extack)
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13352  {
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13353  	int frame_size =
=3D vsi->netdev->mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN;
599984216d420f Sylwester Dziedziuch 2022-12-21  13354  	bool is_xdp_enabled=
 =3D i40e_enabled_xdp_vsi(vsi);
599984216d420f Sylwester Dziedziuch 2022-12-21  13355  	bool if_running =3D=
 netif_running(vsi->netdev);
599984216d420f Sylwester Dziedziuch 2022-12-21  13356  	bool need_reinit =
=3D is_xdp_enabled !=3D !!prog;
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13357  	struct i40e_pf =
*pf =3D vsi->back;
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13358  	struct bpf_prog=
 *old_prog;
599984216d420f Sylwester Dziedziuch 2022-12-21  13359  	int ret =3D 0;
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13360  =

0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13361  	/* Don't allow =
frames that span over multiple buffers */
0c87b545a2ed5c Bartosz Staszewski   2022-12-09  13362  	if (frame_size > i4=
0e_calculate_vsi_rx_buf_len(vsi)) {
613142b0bb8840 Eryk Rybak           2021-01-14  13363  		NL_SET_ERR_MSG_MOD=
(extack, "MTU too large to enable XDP");
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13364  		return -EINVAL;
613142b0bb8840 Eryk Rybak           2021-01-14  13365  	}
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13366  =

6533e558c6505e Karen Sornek         2022-01-12  13367  	/* VSI shall be del=
eted in a moment, just return EINVAL */
6533e558c6505e Karen Sornek         2022-01-12  13368  	if (test_bit(__I40E=
_IN_REMOVE, pf->state))
6533e558c6505e Karen Sornek         2022-01-12  13369  		return -EINVAL;
6533e558c6505e Karen Sornek         2022-01-12  13370  =

0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13371  	old_prog =3D xc=
hg(&vsi->xdp_prog, prog);
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13372  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13373  	if (!need_reinit)
599984216d420f Sylwester Dziedziuch 2022-12-21  13374  		goto assign_prog;
599984216d420f Sylwester Dziedziuch 2022-12-21  13375  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13376  	if (if_running && !=
test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
599984216d420f Sylwester Dziedziuch 2022-12-21  13377  		i40e_down(vsi);
599984216d420f Sylwester Dziedziuch 2022-12-21  13378  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13379  	vsi =3D i40e_vsi_re=
init_setup(vsi, true);
599984216d420f Sylwester Dziedziuch 2022-12-21  13380  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13381  	if (!vsi) {
599984216d420f Sylwester Dziedziuch 2022-12-21  13382  		NL_SET_ERR_MSG_MOD=
(extack, "Failed to reinitialize VSI during XDP setup");
599984216d420f Sylwester Dziedziuch 2022-12-21 @13383  		goto err_vsi_setup;

ret =3D -ESOMETHING;

b3873a5be757b4 Maxim Mikityanskiy   2019-12-17  13384  	}
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13385  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13386  	/* allocate descrip=
tors */
599984216d420f Sylwester Dziedziuch 2022-12-21  13387  	ret =3D i40e_vsi_se=
tup_tx_resources(vsi);
599984216d420f Sylwester Dziedziuch 2022-12-21  13388  	if (ret) {
599984216d420f Sylwester Dziedziuch 2022-12-21  13389  		NL_SET_ERR_MSG_MOD=
(extack, "Failed to configure TX resources during XDP setup");
599984216d420f Sylwester Dziedziuch 2022-12-21  13390  		goto err_setup_tx;
599984216d420f Sylwester Dziedziuch 2022-12-21  13391  	}
599984216d420f Sylwester Dziedziuch 2022-12-21  13392  	ret =3D i40e_vsi_se=
tup_rx_resources(vsi);
599984216d420f Sylwester Dziedziuch 2022-12-21  13393  	if (ret) {
599984216d420f Sylwester Dziedziuch 2022-12-21  13394  		NL_SET_ERR_MSG_MOD=
(extack, "Failed to configure RX resources during XDP setup");
599984216d420f Sylwester Dziedziuch 2022-12-21  13395  		goto err_setup_rx;
aae425efdfd1b1 Jan Sokolowski       2022-10-12  13396  	}
aae425efdfd1b1 Jan Sokolowski       2022-10-12  13397  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13398  	if (!is_xdp_enabled=
 && prog)
599984216d420f Sylwester Dziedziuch 2022-12-21  13399  		ret =3D i40e_reall=
oc_rx_bi_zc(vsi, true);
599984216d420f Sylwester Dziedziuch 2022-12-21  13400  	else if (is_xdp_ena=
bled && !prog)
599984216d420f Sylwester Dziedziuch 2022-12-21  13401  		ret =3D i40e_reall=
oc_rx_bi_zc(vsi, false);
599984216d420f Sylwester Dziedziuch 2022-12-21  13402  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13403  	if (ret) {
599984216d420f Sylwester Dziedziuch 2022-12-21  13404  		NL_SET_ERR_MSG_MOD=
(extack, "Failed to reallocate RX resources during XDP setup");
599984216d420f Sylwester Dziedziuch 2022-12-21  13405  		goto err_vsi_setup;
599984216d420f Sylwester Dziedziuch 2022-12-21  13406  	}
599984216d420f Sylwester Dziedziuch 2022-12-21  13407  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13408  	if (if_running) {
599984216d420f Sylwester Dziedziuch 2022-12-21  13409  		ret =3D i40e_up(vs=
i);
599984216d420f Sylwester Dziedziuch 2022-12-21  13410  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13411  		if (ret) {
599984216d420f Sylwester Dziedziuch 2022-12-21  13412  			NL_SET_ERR_MSG_MO=
D(extack, "Failed to open VSI during XDP setup");
599984216d420f Sylwester Dziedziuch 2022-12-21  13413  			goto err_vsi_setu=
p;
599984216d420f Sylwester Dziedziuch 2022-12-21  13414  		}
599984216d420f Sylwester Dziedziuch 2022-12-21  13415  	}
599984216d420f Sylwester Dziedziuch 2022-12-21  13416  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13417  assign_prog:
599984216d420f Sylwester Dziedziuch 2022-12-21  13418  	i40e_vsi_assign_bpf=
_prog(vsi, prog);
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13419  =

0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13420  	if (old_prog)
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13421  		bpf_prog_put(o=
ld_prog);
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13422  =

14ffeb52f3693a Magnus Karlsson      2019-01-29  13423  	/* Kick start the N=
API context if there is an AF_XDP socket open
14ffeb52f3693a Magnus Karlsson      2019-01-29  13424  	 * on that queue id=
. This so that receiving will start.
14ffeb52f3693a Magnus Karlsson      2019-01-29  13425  	 */
599984216d420f Sylwester Dziedziuch 2022-12-21  13426  	if (need_reinit && =
prog)
599984216d420f Sylwester Dziedziuch 2022-12-21  13427  		i40e_vsi_rx_napi_s=
chedule(vsi);
14ffeb52f3693a Magnus Karlsson      2019-01-29  13428  =

0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13429  	return 0;
599984216d420f Sylwester Dziedziuch 2022-12-21  13430  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13431  err_setup_rx:
599984216d420f Sylwester Dziedziuch 2022-12-21  13432  	i40e_vsi_free_rx_re=
sources(vsi);
599984216d420f Sylwester Dziedziuch 2022-12-21  13433  err_setup_tx:
599984216d420f Sylwester Dziedziuch 2022-12-21  13434  	i40e_vsi_free_tx_re=
sources(vsi);
599984216d420f Sylwester Dziedziuch 2022-12-21  13435  err_vsi_setup:
599984216d420f Sylwester Dziedziuch 2022-12-21  13436  	i40e_do_reset(pf, I=
40E_PF_RESET_FLAG, true);
599984216d420f Sylwester Dziedziuch 2022-12-21  13437  	i40e_vsi_assign_bpf=
_prog(vsi, old_prog);
599984216d420f Sylwester Dziedziuch 2022-12-21  13438  =

599984216d420f Sylwester Dziedziuch 2022-12-21  13439  	return ret;
0c8493d90b6bb0 Bj=F6rn T=F6pel          2017-05-24  13440  }

-- =

0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
