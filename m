Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF68D2D3073
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 18:02:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 566E687418;
	Tue,  8 Dec 2020 17:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FayJsEQkeBQS; Tue,  8 Dec 2020 17:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76E3F87473;
	Tue,  8 Dec 2020 17:02:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B3B71BF356
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 04:52:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8EF178728C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 04:52:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VFookIaQo3SJ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 04:52:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5814F87268
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 04:52:50 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B84nPNV064006;
 Tue, 8 Dec 2020 04:52:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=1e3cV7XKyt5cBPHNeWYhYMHu3W87CKppja6U1Jvw5F4=;
 b=V+G180Fh0lHbcmydQJqS5i+cerb42SoRrRI9QCXlQMjyWKKfj0acXqExTQUiK+7OEtft
 OuMy/8L57grCegXY4FPi2mfpdUD9NETOrjU6XyLEGnB6yCKU9e30d2WSgQTsYBxq/cMN
 5junVfgiRpfFB5rc1EfDtZHP43anCs3FIrUtz16u4yPsKG0NCInMT5yeMTaPCX1MMJeq
 qZ1GHIcbwNatFRQ/tELhwJDJybfqjlIskC/pDoCLpTPJ2KTrod7PX9rst5aaRTC3xIQA
 veh/+mbPHLjYXfePq5oiUCHv2+7Gowf8M2KKiHFzojpZKSSSQD2meZy2nTRpI8CVh6TQ Yg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 35825m0srq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 08 Dec 2020 04:52:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B84ocw5155469;
 Tue, 8 Dec 2020 04:52:34 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3020.oracle.com with ESMTP id 358kys9m8s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 08 Dec 2020 04:52:34 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0B84qX4M159553;
 Tue, 8 Dec 2020 04:52:33 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 358kys9m7s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Dec 2020 04:52:33 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0B84qDZf015901;
 Tue, 8 Dec 2020 04:52:15 GMT
Received: from ca-mkp.ca.oracle.com (/10.156.108.201)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Dec 2020 20:52:13 -0800
From: "Martin K. Petersen" <martin.petersen@oracle.com>
To: linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
Date: Mon,  7 Dec 2020 23:52:01 -0500
Message-Id: <160740299787.710.4201881220590518200.b4-ty@oracle.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9828
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 bulkscore=0
 phishscore=0 mlxlogscore=380 clxscore=1015 priorityscore=1501 mlxscore=0
 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012080029
X-Mailman-Approved-At: Tue, 08 Dec 2020 17:02:09 +0000
Subject: Re: [Intel-wired-lan] (subset) [PATCH 000/141] Fix fall-through
 warnings for Clang
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
Cc: linux-fbdev@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-stm32@st-md-mailman.stormreply.com, linux-iio@vger.kernel.org,
 linux-wireless@vger.kernel.org, alsa-devel@alsa-project.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-ide@vger.kernel.org, dm-devel@redhat.com,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-hardening@vger.kernel.org, wcn36xx@lists.infradead.org,
 linux-i3c@lists.infradead.org, linux-decnet-user@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Kees Cook <keescook@chromium.org>, devel@driverdev.osuosl.org,
 linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com,
 linux1394-devel@lists.sourceforge.net, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, oss-drivers@netronome.com, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, linux-afs@lists.infradead.org,
 cluster-devel@redhat.com, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, xen-devel@lists.xenproject.org,
 linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, linux-watchdog@vger.kernel.org,
 selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, reiserfs-devel@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org,
 linux-mediatek@lists.infradead.org, samba-technical@lists.samba.org,
 drbd-dev@tron.linbit.com, linux-hams@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-can@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, tipc-discussion@lists.sourceforge.net,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 nouveau@lists.freedesktop.org, patches@opensource.cirrus.com,
 linux-usb@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-sctp@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-security-module@vger.kernel.org, target-devel@vger.kernel.org,
 netfilter-devel@vger.kernel.org, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 20 Nov 2020 12:21:39 -0600, Gustavo A. R. Silva wrote:

> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.
> 
> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> add multiple break/goto/return/fallthrough statements instead of just
> letting the code fall through to the next case.
> 
> [...]

Applied to 5.11/scsi-queue, thanks!

[054/141] target: Fix fall-through warnings for Clang
          https://git.kernel.org/mkp/scsi/c/492096ecfa39

-- 
Martin K. Petersen	Oracle Linux Engineering
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
