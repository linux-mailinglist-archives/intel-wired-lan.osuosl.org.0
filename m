Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDXAB1Xd/mkkxwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 09:08:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EB04FE67F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 09 May 2026 09:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 17C8A84DA4;
	Sat,  9 May 2026 07:08:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bi4P6MxNi5rY; Sat,  9 May 2026 07:08:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 91B6983D97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778310482;
	bh=La0ORzjJavuPpjlJ1cjuY4Lh51IqaSHUn7VqG/IAimc=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=CukUHhWqSpsHJb4oqN2Ap9qm70xZz+ZsZtw6uTUht27lBbIAr1IDE49+xm9GJgmd6
	 HMN4iz9rYrImBkFyGQmvhwaH/C/ujToO5Raqv86e9xUxBMSop3BoIAkvwS1h5iS3kb
	 RuAhM1hZeBNvjrskYaCEwxgOwqr/s3we99Qs2MBnBiwGSR0iAF25TSrXOhrIEukOrz
	 S0msMRmY3mmVsxv1zgRiD9exNaTXcZY6j6Jl7VzVirbgffoLhWdwUtO6ZwWbNI3tC9
	 /csCSvS8l48T1m6PIwviOLSqp0zIVPkazcHXuH43iljouYuYD0+2fo9a5niAKpZVNb
	 K5RlK0f5HxSjg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 91B6983D97;
	Sat,  9 May 2026 07:08:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4438522F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 May 2026 07:08:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 363EB6F536
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 May 2026 07:08:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sLaxRswz91Do for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 May 2026 07:08:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::f31; helo=mail-qv1-xf31.google.com;
 envelope-from=error27@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 56B0A6F534
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56B0A6F534
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com
 [IPv6:2607:f8b0:4864:20::f31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 56B0A6F534
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 May 2026 07:08:00 +0000 (UTC)
Received: by mail-qv1-xf31.google.com with SMTP id
 6a1803df08f44-8b4eb1fd5d0so25080976d6.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 09 May 2026 00:08:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778310479; x=1778915279;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=La0ORzjJavuPpjlJ1cjuY4Lh51IqaSHUn7VqG/IAimc=;
 b=HXO4/pzWDw1g3TczO/AX86//uVr/80vhTXlE9RxgU2Jx0yXrIydu29Ohk6VGqr9D2b
 jbcA/+WeVmFRtBuw9/aEjdo3abKBBa/qvuT2DL/Pr+c0VGrx+runrSf6kFys+Lu7uyjo
 GKpb28c/q2hP/Er93nceges4o92sgO8JQSGH08K5yqUxCjW2hYtp3wAZQgL9H/v+FjZ0
 rJh46jf1lxmPaTuokfrs1/pweATIVhI1NyfFk5vZspsB7QSsD3bE//ws7pz0Hb1bnbYJ
 raqcFLPUW4o4BOR7zFHfo5zWFrJmqyhJ2Z00AUGNiK7/OUo4akkJLPSeVzagghiTSipC
 8GXg==
X-Gm-Message-State: AOJu0YwbZNeovMlc8PpFp+K/TMPVsXFAGJ8bQnaOMXIEg3CF96CBdEhN
 c9vqNlkKnDRrDPORad+rSW0DN1kFTv9irS2fR5dZAyjs3v4agE3i+Y6qtxlkibQX
X-Gm-Gg: Acq92OHYCps+ag5Zqnq1XW+Ysd3n/zW7erDmOskxZKAMGw8hP+1zmgSckzdfRoQNgo4
 oHgwX64E9oUAXqV4RbIfHqDXKmfS8ecklxRJM4rVRBbI1eNQ4B4XqmOxH+reaMeoF+6nq2OaipZ
 ows6oDsodI6t/cI9XtPDMoAa89Br1/JwJY1tJg45gpchROJUUpTeLRgYHPxwFFkOGwE2LH2Rb7Y
 gKxLolOg4ySyh2j+OH0cEISLpcFifRV9S4ufZiE+FydoQSRWdEhZCRK9935XZ8tVkgpczK+jH4l
 BKOG1UCtI182VmD5Vl8rsvw+nl3Flgkl3lgD8bFtNtqbpSeEmc+9Ey/8R016MrDRzLdfziDk5Dc
 ixM1hN02euMzK2pkVNMl+Qenen+sZ0KpRNWYyXQ3Q2pq4f9Kcs56/qL9N50uMhQHK1qMYy/XxgF
 OmzJT/usAH1Yzzv3+PjV3SxhtdSS7l
X-Received: by 2002:a05:6214:3291:b0:8bd:6baa:6aab with SMTP id
 6a1803df08f44-8c1a2ee2c4cmr21906366d6.17.1778310478804; 
 Sat, 09 May 2026 00:07:58 -0700 (PDT)
Received: from localhost ([185.141.119.51]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-8bf3addb3aasm38980946d6.10.2026.05.09.00.07.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 May 2026 00:07:58 -0700 (PDT)
Date: Sat, 9 May 2026 10:07:53 +0300
From: Dan Carpenter <error27@gmail.com>
To: Michal Kubiak <michal.kubiak@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Message-ID: <af7dSYm77Wnvix4D@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1778310479; x=1778915279; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=La0ORzjJavuPpjlJ1cjuY4Lh51IqaSHUn7VqG/IAimc=;
 b=l9LiyDh7/dR5PQCBD3gwp2Ln3MW3cVqiYOslYGBdgSxu2KeAgtUQwVloIVK00+nys5
 QqH4Ka728e5MX2P3h5wF4oXx8bSdeK5EAmGQV4p+r+vmfyshwwIUbFVGU8xUUYZxywgS
 VmfbB3jjpCHN0bTqUArjL0HAPYcW30I0HCEsS99Jq4m7/ghGThLO5pju10eJT2VKquDh
 Td2YgPfp50MNy66qm8SL/6eXM6X2gIhCs/TbhB2vh4JfhiXwMRjA8hJSYU+OyrMxfjX4
 ZdTZZwNIhawERqofj63YmstVyjfj4rvlJJN8X9Cpz7X4uXUBjnojahZZxWWiQggCGD8a
 z9pQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=l9LiyDh7
Subject: [Intel-wired-lan] [bug report] ice: switch to Page Pool
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 98EB04FE67F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:michal.kubiak@intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,stanley.mountain:mid];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hello Michal Kubiak,

Commit 93f53db9f9dc ("ice: switch to Page Pool") from Sep 25, 2025
(linux-next), leads to the following Smatch static checker warning:

	drivers/net/ethernet/intel/ice/ice_xsk.c:203 ice_xsk_pool_setup()
	warn: potential bounds check after use 'qid'

drivers/net/ethernet/intel/ice/ice_xsk.c
    197 int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
    198 {
    199         struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
                                              ^^^^^^^^^^^^^^^^^^
This looks like potentially an out of bounds read.

    200         bool if_running, pool_present = !!pool;
    201         int ret = 0, pool_failure = 0;
    202 
--> 203         if (qid >= vsi->num_rxq || qid >= vsi->num_txq) {
                    ^^^^^^^^^^^^^^^^^^^
qid is checked here but it's too late.

    204                 netdev_err(vsi->netdev, "Please use queue id in scope of combined queues count\n");
    205                 pool_failure = -EINVAL;
    206                 goto failure;
    207         }

This email is a free service from the Smatch-CI project [smatch.sf.net].

regards,
dan carpenter
