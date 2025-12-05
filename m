Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F323CA661A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 08:23:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC17540A1D;
	Fri,  5 Dec 2025 07:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p6iVl5zW7TM2; Fri,  5 Dec 2025 07:23:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E6BD40A0A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764919421;
	bh=k4/fcNS8kky3Rm+i8WdInM413rzLMh5Uvxb+5uYpuyo=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=iPM1c6vwOeGqa4JtxMbeGHX76hdyoi+6NMM9waD835SRz0TJdmipeVgh0il2kehSj
	 7JuzZ3tEsHatEihDYJyWBBtAwjZU8qT2+kVGxn1eC1psdBfjPoRsYcBPPmiWCnMvos
	 I6HLnjQJ4LKmX1v5zYGbAmEegnBU5A6l4DsxGJeG6jU/dunH1WhjpiTu/De2RLzdFr
	 XULmV2Scy63trN4BOtiau6iVP31s/DNxGGapw1AT3YSWhTKvuDKFF1WuQiLGoXFSfW
	 zpHVbF6W6T3zjE8z8q9/qDNd8wgs5/DG9BJYydJPirOQQxRfm9qSbKQiLkrnS7TaHy
	 nbKDbBSAJdiEw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E6BD40A0A;
	Fri,  5 Dec 2025 07:23:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C95A1A9
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:23:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61EAE60FDF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:23:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bnoUwaqSt16A for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 07:23:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::336; helo=mail-wm1-x336.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EC4F960F12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EC4F960F12
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EC4F960F12
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 07:23:37 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id
 5b1f17b1804b1-477ba2c1ca2so21828935e9.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Dec 2025 23:23:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764919415; x=1765524215;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=k4/fcNS8kky3Rm+i8WdInM413rzLMh5Uvxb+5uYpuyo=;
 b=CBiSR3zb+x9RYcb9m/5/zL5Pv3vPfpHLnjvAUwEtbxRxObMNwe2wrIg3p+JD836987
 dGiestNPhSBSohXbMRyvjmeBsNeO7IWN7LEW18MtiIF2Aoe6Xqj0Et7r+S630Tp3FNXO
 tYWBVTxf8r+8Wip7vCpGIDqzr8vOW4yzxMi7PfPz8T54CQ9pwVc8uFMBXC9e2/kLuapS
 26NqzZQZ2+EONzSnZfsqwgbLnW7smdBjcVDDbBzp2Q16a9xUwcchT6nhepVviL6kfV22
 C7XLqO4f/xe437L9vu4cDvte6gkvg+biJR/BSdLBrmjJObZwvWgUkyH7zFOs+T9UBpFI
 IIrg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXrpti+96AgB0tOOd8uglFx2bWDjKdbmwUASvD9AQYFw2RSVdYVYNlc8ePd2VCEqNNRZLo036DjH1Hrwwinymg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwlOjwSSlJLgnsxJalGzho6nI0ium+cSwkCO/tQ8ET7Q6zpk5NH
 Hoyjr+LB8zDsfI4NZNHeyr0liei832OnFctWgGBpsNk5p4LK9koMx5k+OZU3Rlydt1Y=
X-Gm-Gg: ASbGncuQeeFFxV6NUSfKLsjSh7OHmS+2dya2JM3NCE7awqfqn8NegXd1YHmUiXu3J44
 C7f4h2vRwpL/jx0B/O3d5gRIryzBaN2mU4w/BeyhI2tSbUQcnMrRD2h6SFcjoIrU0aXtElBBYdH
 uHiQIc5uFlUSEkSNXH0qOZBg/LlK/lWedpqf4C/SBPdME9pT/PPf90Hzf70dghdXW2PSWb595MM
 ayEyAa2p04Kq6+9RuR11g87H9BrR4psMM4rG5V1pjN+X/emS4nUE2juJGu/555gTx6kpDv1l//M
 Y/kEhcb2Q/ECUiAEwTjG2M3EMS7aE2610pg0WLBf+69M7brEzlBO3B7tvJMVopA9uhnq0KrNBxn
 NpedkMXpwnHWmyilQoLRZzonvz3pqHxil6+NnWEQK/gcW3bAlzaEGRWCM6pCPdxFqrYJRGbbtLT
 3HQuWzlJaIRabMctEs
X-Google-Smtp-Source: AGHT+IHqi1QpVSllbMiRHNcv1AbXpU4AuCeDaedHZwtKEH/lvnzqXTU1voWQvbkLB812wn0n/39E2w==
X-Received: by 2002:a05:600c:a49:b0:477:7991:5d1e with SMTP id
 5b1f17b1804b1-4792f38d372mr43114255e9.25.1764919415444; 
 Thu, 04 Dec 2025 23:23:35 -0800 (PST)
Received: from localhost ([196.207.164.177])
 by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-4792b157783sm60515375e9.5.2025.12.04.23.23.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Dec 2025 23:23:34 -0800 (PST)
Date: Fri, 5 Dec 2025 10:23:31 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev
Message-ID: <202512050309.Jd0nVLZj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1764919415; x=1765524215; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=k4/fcNS8kky3Rm+i8WdInM413rzLMh5Uvxb+5uYpuyo=;
 b=Mt4jMNmzWI/RGjemkWX+MCoY09PmTIHh0ZSkvjFuryLxAJs0qWT4QmEwJNc0TRBYBC
 L+KqJyJjT6Q6epi5WnkHhSzPL7iUSX+nkn+5CTP5dkpIXe2r7Gi9RHI2aX/4l5cFTsPF
 vD8HDj7Yrid/mvyklH366EAj4xtX9SaAoYGzceQTTB1l6I+eqS04lcbvoTEFORAI1FsC
 9ACEQIHor23Q9FygWyxEcpwMsEbIkNzL7N9nQ9LDQMEBlZKnayekViDgvO+sLxmqHNK2
 y438MztwWJCntZg8NK/lFgSA0xxAAEuubnUa17bLmCoF6eDLSvZe5Njg043KHdSBnl22
 aN+Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=Mt4jMNmz
Subject: [Intel-wired-lan] [tnguy-next-queue:dev-queue 41/61]
 drivers/net/ethernet/intel/idpf/idpf_ethtool.c:252 idpf_add_flow_steer()
 warn: missing error code 'err'
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, oe-kbuild-all@lists.linux.dev,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
head:   b8ceeacaba537294e383161a87e09b939ecd7d1d
commit: f017eeeb027274f63af4d541a315235abf2bc5e9 [41/61] idpf: refactor idpf to use libie control queues
config: s390-randconfig-r072-20251204 (https://download.01.org/0day-ci/archive/20251205/202512050309.Jd0nVLZj-lkp@intel.com/config)
compiler: clang version 20.1.8 (https://github.com/llvm/llvm-project 87f0227cb60147a26a1eeb4fb06e3b505e9c7261)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202512050309.Jd0nVLZj-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/intel/idpf/idpf_ethtool.c:252 idpf_add_flow_steer() warn: missing error code 'err'

vim +/err +252 drivers/net/ethernet/intel/idpf/idpf_ethtool.c

ada3e24b84a097 Ahmed Zaki            2025-04-23  164  static int idpf_add_flow_steer(struct net_device *netdev,
ada3e24b84a097 Ahmed Zaki            2025-04-23  165  			       struct ethtool_rxnfc *cmd)
ada3e24b84a097 Ahmed Zaki            2025-04-23  166  {
ada3e24b84a097 Ahmed Zaki            2025-04-23  167  	struct idpf_fsteer_fltr *fltr, *parent = NULL, *f;
ada3e24b84a097 Ahmed Zaki            2025-04-23  168  	struct idpf_netdev_priv *np = netdev_priv(netdev);
ada3e24b84a097 Ahmed Zaki            2025-04-23  169  	struct idpf_vport_user_config_data *user_config;
ada3e24b84a097 Ahmed Zaki            2025-04-23  170  	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
ada3e24b84a097 Ahmed Zaki            2025-04-23  171  	struct virtchnl2_flow_rule_add_del *rule;
ada3e24b84a097 Ahmed Zaki            2025-04-23  172  	struct idpf_vport_config *vport_config;
ada3e24b84a097 Ahmed Zaki            2025-04-23  173  	struct virtchnl2_rule_action_set *acts;
ada3e24b84a097 Ahmed Zaki            2025-04-23  174  	struct virtchnl2_flow_rule_info *info;
ada3e24b84a097 Ahmed Zaki            2025-04-23  175  	struct virtchnl2_proto_hdrs *hdrs;
ada3e24b84a097 Ahmed Zaki            2025-04-23  176  	struct idpf_vport *vport;
ada3e24b84a097 Ahmed Zaki            2025-04-23  177  	u32 flow_type, q_index;
ada3e24b84a097 Ahmed Zaki            2025-04-23  178  	u16 num_rxq;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  179  	int err = 0;
ada3e24b84a097 Ahmed Zaki            2025-04-23  180  
ada3e24b84a097 Ahmed Zaki            2025-04-23  181  	vport = idpf_netdev_to_vport(netdev);
ada3e24b84a097 Ahmed Zaki            2025-04-23  182  	vport_config = vport->adapter->vport_config[np->vport_idx];
ada3e24b84a097 Ahmed Zaki            2025-04-23  183  	user_config = &vport_config->user_config;
ada3e24b84a097 Ahmed Zaki            2025-04-23  184  	num_rxq = user_config->num_req_rx_qs;
ada3e24b84a097 Ahmed Zaki            2025-04-23  185  
ada3e24b84a097 Ahmed Zaki            2025-04-23  186  	flow_type = fsp->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT | FLOW_RSS);
ada3e24b84a097 Ahmed Zaki            2025-04-23  187  	if (flow_type != fsp->flow_type)
ada3e24b84a097 Ahmed Zaki            2025-04-23  188  		return -EINVAL;
ada3e24b84a097 Ahmed Zaki            2025-04-23  189  
ada3e24b84a097 Ahmed Zaki            2025-04-23  190  	if (!idpf_sideband_action_ena(vport, fsp) ||
ada3e24b84a097 Ahmed Zaki            2025-04-23  191  	    !idpf_sideband_flow_type_ena(vport, flow_type))
ada3e24b84a097 Ahmed Zaki            2025-04-23  192  		return -EOPNOTSUPP;
ada3e24b84a097 Ahmed Zaki            2025-04-23  193  
ada3e24b84a097 Ahmed Zaki            2025-04-23  194  	if (user_config->num_fsteer_fltrs > idpf_fsteer_max_rules(vport))
ada3e24b84a097 Ahmed Zaki            2025-04-23  195  		return -ENOSPC;
ada3e24b84a097 Ahmed Zaki            2025-04-23  196  
ada3e24b84a097 Ahmed Zaki            2025-04-23  197  	q_index = fsp->ring_cookie;
ada3e24b84a097 Ahmed Zaki            2025-04-23  198  	if (q_index >= num_rxq)
ada3e24b84a097 Ahmed Zaki            2025-04-23  199  		return -EINVAL;
ada3e24b84a097 Ahmed Zaki            2025-04-23  200  
ada3e24b84a097 Ahmed Zaki            2025-04-23  201  	rule = kzalloc(struct_size(rule, rule_info, 1), GFP_KERNEL);
ada3e24b84a097 Ahmed Zaki            2025-04-23  202  	if (!rule)
ada3e24b84a097 Ahmed Zaki            2025-04-23  203  		return -ENOMEM;
ada3e24b84a097 Ahmed Zaki            2025-04-23  204  
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  205  	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  206  	if (!fltr) {
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  207  		err = -ENOMEM;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  208  		goto out_free_rule;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  209  	}
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  210  
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  211  	/* detect duplicate entry and reject before adding rules */
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  212  	spin_lock_bh(&vport_config->flow_steer_list_lock);
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  213  	list_for_each_entry(f, &user_config->flow_steer_list, list) {
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  214  		if (f->fs.location == fsp->location) {
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  215  			err = -EEXIST;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  216  			break;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  217  		}
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  218  
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  219  		if (f->fs.location > fsp->location)
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  220  			break;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  221  		parent = f;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  222  	}
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  223  	spin_unlock_bh(&vport_config->flow_steer_list_lock);
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  224  
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  225  	if (err)
f017eeeb027274 Pavan Kumar Linga     2025-11-17  226  		goto out_free_fltr;
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  227  
ada3e24b84a097 Ahmed Zaki            2025-04-23  228  	rule->vport_id = cpu_to_le32(vport->vport_id);
ada3e24b84a097 Ahmed Zaki            2025-04-23  229  	rule->count = cpu_to_le32(1);
ada3e24b84a097 Ahmed Zaki            2025-04-23  230  	info = &rule->rule_info[0];
ada3e24b84a097 Ahmed Zaki            2025-04-23  231  	info->rule_id = cpu_to_le32(fsp->location);
ada3e24b84a097 Ahmed Zaki            2025-04-23  232  
ada3e24b84a097 Ahmed Zaki            2025-04-23  233  	hdrs = &info->rule_cfg.proto_hdrs;
ada3e24b84a097 Ahmed Zaki            2025-04-23  234  	hdrs->tunnel_level = 0;
ada3e24b84a097 Ahmed Zaki            2025-04-23  235  	hdrs->count = cpu_to_le32(2);
ada3e24b84a097 Ahmed Zaki            2025-04-23  236  
ada3e24b84a097 Ahmed Zaki            2025-04-23  237  	acts = &info->rule_cfg.action_set;
ada3e24b84a097 Ahmed Zaki            2025-04-23  238  	acts->count = cpu_to_le32(1);
ada3e24b84a097 Ahmed Zaki            2025-04-23  239  	acts->actions[0].action_type = cpu_to_le32(VIRTCHNL2_ACTION_QUEUE);
ada3e24b84a097 Ahmed Zaki            2025-04-23  240  	acts->actions[0].act_conf.q_id = cpu_to_le32(q_index);
ada3e24b84a097 Ahmed Zaki            2025-04-23  241  
ada3e24b84a097 Ahmed Zaki            2025-04-23  242  	switch (flow_type) {
ada3e24b84a097 Ahmed Zaki            2025-04-23  243  	case UDP_V4_FLOW:
ada3e24b84a097 Ahmed Zaki            2025-04-23  244  		idpf_fsteer_fill_ipv4(hdrs, fsp);
ada3e24b84a097 Ahmed Zaki            2025-04-23  245  		idpf_fsteer_fill_udp(hdrs, fsp, true);
ada3e24b84a097 Ahmed Zaki            2025-04-23  246  		break;
ada3e24b84a097 Ahmed Zaki            2025-04-23  247  	case TCP_V4_FLOW:
ada3e24b84a097 Ahmed Zaki            2025-04-23  248  		idpf_fsteer_fill_ipv4(hdrs, fsp);
ada3e24b84a097 Ahmed Zaki            2025-04-23  249  		idpf_fsteer_fill_tcp(hdrs, fsp, true);
ada3e24b84a097 Ahmed Zaki            2025-04-23  250  		break;
02cbfba1add5bd Alan Brady            2023-08-07  251  	default:
f017eeeb027274 Pavan Kumar Linga     2025-11-17 @252  		goto out_free_fltr;

err = -EINVAL, plz.

ada3e24b84a097 Ahmed Zaki            2025-04-23  253  	}
ada3e24b84a097 Ahmed Zaki            2025-04-23  254  
ada3e24b84a097 Ahmed Zaki            2025-04-23  255  	err = idpf_add_del_fsteer_filters(vport->adapter, rule,
ada3e24b84a097 Ahmed Zaki            2025-04-23  256  					  VIRTCHNL2_OP_ADD_FLOW_RULE);
f017eeeb027274 Pavan Kumar Linga     2025-11-17  257  	if (err || info->status != cpu_to_le32(VIRTCHNL2_FLOW_RULE_SUCCESS)) {
f017eeeb027274 Pavan Kumar Linga     2025-11-17  258  		/* virtchnl2 rule is already consumed */
f017eeeb027274 Pavan Kumar Linga     2025-11-17  259  		kfree(fltr);
f017eeeb027274 Pavan Kumar Linga     2025-11-17  260  		return err;

Should this be:

	return err ?: -EINVAL;

ada3e24b84a097 Ahmed Zaki            2025-04-23  261  	}
ada3e24b84a097 Ahmed Zaki            2025-04-23  262  
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  263  	/* Save a copy of the user's flow spec so ethtool can later retrieve it */
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  264  	fltr->fs = *fsp;
ada3e24b84a097 Ahmed Zaki            2025-04-23  265  
61022f50353bc8 Sreedevi Joshi        2025-09-30  266  	spin_lock_bh(&vport_config->flow_steer_list_lock);
ada3e24b84a097 Ahmed Zaki            2025-04-23  267  	parent ? list_add(&fltr->list, &parent->list) :
ada3e24b84a097 Ahmed Zaki            2025-04-23  268  		 list_add(&fltr->list, &user_config->flow_steer_list);
ada3e24b84a097 Ahmed Zaki            2025-04-23  269  
ada3e24b84a097 Ahmed Zaki            2025-04-23  270  	user_config->num_fsteer_fltrs++;
61022f50353bc8 Sreedevi Joshi        2025-09-30  271  	spin_unlock_bh(&vport_config->flow_steer_list_lock);
02cbfba1add5bd Alan Brady            2023-08-07  272  
f017eeeb027274 Pavan Kumar Linga     2025-11-17  273  	return 0;
f017eeeb027274 Pavan Kumar Linga     2025-11-17  274  
f017eeeb027274 Pavan Kumar Linga     2025-11-17  275  out_free_fltr:
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  276  	kfree(fltr);
f19069e5da487f Erik Gabriel Carrillo 2025-09-30  277  out_free_rule:
ada3e24b84a097 Ahmed Zaki            2025-04-23  278  	kfree(rule);
ada3e24b84a097 Ahmed Zaki            2025-04-23  279  	return err;
ada3e24b84a097 Ahmed Zaki            2025-04-23  280  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

