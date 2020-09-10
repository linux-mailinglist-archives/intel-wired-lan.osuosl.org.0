Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 992182653C1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Sep 2020 23:40:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4493D200ED;
	Thu, 10 Sep 2020 21:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jk1kG+RT8tWc; Thu, 10 Sep 2020 21:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 18D542083F;
	Thu, 10 Sep 2020 21:40:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0CDD1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 09:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C36D887653
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Sep 2020 09:18:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2bFidnX5y5LU; Thu, 10 Sep 2020 09:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7970986FFB;
 Thu, 10 Sep 2020 09:18:51 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 08A92VZj043273; Thu, 10 Sep 2020 05:18:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=from : subject : to : cc
 : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=lbijph5Taiyv+LvsJ/sM7F9hRJYgXJ1/OeIBGv1V4zI=;
 b=m+S0uISl4zEUpQGOdqBmign+zGpGsKWZr0M8gyz4QB85tpAWWy9P9TsdEALPMOQc3bzS
 HTmLUO+a8FzA6nkFFUM33SJxJVALimBUdqlyOa2QZAPtF+c5k3tdLE9Ja5lY/NITAiC6
 7HCRwKAifhDAW7efbtBkvvOJ9noreWSpBIsRvblR2Hd6QlL3Ql+0LiOJ/5ZV1/0dyGOl
 ERG9aDbHT//+EVNVz7T31D+HrD6qNbB+7sB3Bj+uKnN/s2x03LNnlPZVOOElWWQIxfaC
 VUv4NZ3PEML96IaUY9CGtxDOOL3o1HTtA4I8YY6eO/McXjX1bfFSSUd+pDdF2Re/VmW7 tg== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 33fh5s0eur-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 10 Sep 2020 05:18:39 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 08A92b39043665;
 Thu, 10 Sep 2020 05:18:37 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com
 [149.81.74.107])
 by mx0a-001b2d01.pphosted.com with ESMTP id 33fh5s0etk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 10 Sep 2020 05:18:37 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
 by ppma03fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 08A9DDHx028675;
 Thu, 10 Sep 2020 09:18:34 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma03fra.de.ibm.com with ESMTP id 33c2a8bckn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 10 Sep 2020 09:18:34 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 08A9GxlP65470906
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 10 Sep 2020 09:16:59 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 6C217AE055;
 Thu, 10 Sep 2020 09:18:32 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 299C6AE04D;
 Thu, 10 Sep 2020 09:18:30 +0000 (GMT)
Received: from oc4120165700.ibm.com (unknown [9.145.14.177])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu, 10 Sep 2020 09:18:30 +0000 (GMT)
From: Steffen Maier <maier@linux.ibm.com>
To: Joe Perches <joe@perches.com>, LKML <linux-kernel@vger.kernel.org>,
 Jiri Kosina <trivial@kernel.org>, Benjamin Block <bblock@linux.ibm.com>
References: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
Message-ID: <0c66fbe5-c48b-7dc1-f7fe-1498da9cc1a3@linux.ibm.com>
Date: Thu, 10 Sep 2020 11:18:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <e6387578c75736d61b2fe70d9783d91329a97eb4.camel@perches.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-09-10_01:2020-09-10,
 2020-09-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 phishscore=0 suspectscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 mlxlogscore=940 adultscore=0 bulkscore=0 clxscore=1011 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009100080
X-Mailman-Approved-At: Thu, 10 Sep 2020 21:40:18 +0000
Subject: Re: [Intel-wired-lan] [trivial PATCH] treewide: Convert switch/case
 fallthrough; to break; 
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
Cc: linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 oss-drivers@netronome.com, nouveau@lists.freedesktop.org,
 alsa-devel <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org,
 linux-ide@vger.kernel.org, dm-devel@redhat.com, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, sparclinux@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-rtc@vger.kernel.org,
 linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, dccp@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-afs@lists.infradead.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-serial@vger.kernel.org,
 linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
 Kees Cook <kees.cook@canonical.com>, linux-media@vger.kernel.org,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-nvme@lists.infradead.org, storagedev@microchip.com,
 ceph-devel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-mips@vger.kernel.org,
 iommu@lists.linux-foundation.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/9/20 10:06 PM, Joe Perches wrote:
> fallthrough to a separate case/default label break; isn't very readable.
> 
> Convert pseudo-keyword fallthrough; statements to a simple break; when
> the next label is case or default and the only statement in the next
> label block is break;
> 
> Found using:
> 
> $ grep-2.5.4 -rP --include=*.[ch] -n "fallthrough;(\s*(case\s+\w+|default)\s*:\s*){1,7}break;" *
> 
> Miscellanea:
> 
> o Move or coalesce a couple label blocks above a default: block.
> 
> Signed-off-by: Joe Perches <joe@perches.com>
> ---
> 
> Compiled allyesconfig x86-64 only.
> A few files for other arches were not compiled.

>   drivers/s390/scsi/zfcp_fsf.c                              |  2 +-

>   82 files changed, 109 insertions(+), 112 deletions(-)

> diff --git a/drivers/s390/scsi/zfcp_fsf.c b/drivers/s390/scsi/zfcp_fsf.c
> index 140186fe1d1e..2741a07df692 100644
> --- a/drivers/s390/scsi/zfcp_fsf.c
> +++ b/drivers/s390/scsi/zfcp_fsf.c
> @@ -2105,7 +2105,7 @@ static void zfcp_fsf_open_lun_handler(struct zfcp_fsf_req *req)
>   
>   	case FSF_PORT_HANDLE_NOT_VALID:
>   		zfcp_erp_adapter_reopen(adapter, 0, "fsouh_1");
> -		fallthrough;
> +		break;
>   	case FSF_LUN_ALREADY_OPEN:
>   		break;
>   	case FSF_PORT_BOXED:

Acked-by: Steffen Maier <maier@linux.ibm.com> # for zfcp


-- 
Mit freundlichen Gruessen / Kind regards
Steffen Maier

Linux on IBM Z Development

https://www.ibm.com/privacy/us/en/
IBM Deutschland Research & Development GmbH
Vorsitzender des Aufsichtsrats: Matthias Hartmann
Geschaeftsfuehrung: Dirk Wittkopp
Sitz der Gesellschaft: Boeblingen
Registergericht: Amtsgericht Stuttgart, HRB 243294
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
