Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D98DD35C0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Oct 2019 02:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BA1287FDD;
	Fri, 11 Oct 2019 00:27:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xf5vxPTS-jBD; Fri, 11 Oct 2019 00:27:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFCF487FE8;
	Fri, 11 Oct 2019 00:27:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3F6C1BF9C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:27:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EB6108876A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:27:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 42FnKq1LBLhI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Oct 2019 00:27:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00190b01.pphosted.com (mx0b-00190b01.pphosted.com
 [67.231.157.127])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 549EF88744
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Oct 2019 00:27:50 +0000 (UTC)
Received: from pps.filterd (m0050102.ppops.net [127.0.0.1])
 by m0050102.ppops.net-00190b01. (8.16.0.42/8.16.0.42) with SMTP id
 x9B0RVBu024203; Fri, 11 Oct 2019 01:27:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=jan2016.eng;
 bh=QM4kC8fA26calO+yCpr6O+eMGNi5kEYW6nS/H2NGEag=;
 b=EO5AoW8xRESvrkahs8awWzq/iVhHPhXizZXizjlO7oUR08pbbIMqSNAQd58WI2Yjsjz/
 qjdgzWdFDqB5QMOy+QSuF0zU6EZaYy3fXOM4+/2X2BcGRB3nyf151sdMP6hhV6VmW6oI
 CQDfClZIHmyjaBG5TQb+5uZPFeVcGcoC4knuij2gqnMwe5KVF/6gA9Msl4g8wjLyZWPe
 65biYdCKue5tcpFkQHkLfT3/osYtGBOdleCgicChDQtSkvxVwb2DAs89OxB5oErt/0l+
 3NtAn41fROtYwxX64ONW673HG9k4xQHIAi0EvZwUf3wm+1tLemBccw6LQxmDllAHF9yO 8g== 
Received: from prod-mail-ppoint4 (prod-mail-ppoint4.akamai.com [96.6.114.87]
 (may be forged))
 by m0050102.ppops.net-00190b01. with ESMTP id 2veg8fmdtb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 11 Oct 2019 01:27:45 +0100
Received: from pps.filterd (prod-mail-ppoint4.akamai.com [127.0.0.1])
 by prod-mail-ppoint4.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x9B0GcOK020801; Thu, 10 Oct 2019 20:27:44 -0400
Received: from prod-mail-relay14.akamai.com ([172.27.17.39])
 by prod-mail-ppoint4.akamai.com with ESMTP id 2veph46ghn-1;
 Thu, 10 Oct 2019 20:27:44 -0400
Received: from [0.0.0.0] (caldecot.sanmateo.corp.akamai.com [172.22.187.166])
 by prod-mail-relay14.akamai.com (Postfix) with ESMTP id C4AD380D1A; 
 Fri, 11 Oct 2019 00:27:43 +0000 (GMT)
To: "Brown, Aaron F" <aaron.f.brown@intel.com>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 "Bowers, AndrewX" <andrewx.bowers@intel.com>
References: <1570658777-13459-1-git-send-email-johunt@akamai.com>
 <CAKgT0UdBPYRnwAuOGhCBAJSRhdHcnw28Tznr0GPAtqe-JWFjTQ@mail.gmail.com>
 <cd8ac880-61fe-b064-6271-993e8c6eee65@akamai.com>
 <CAKgT0UfXgzur2TGv1dNw0PQXAP0C=bNoJY6gnthASeQrHr66AA@mail.gmail.com>
 <0e0e706c-4ce9-c27a-af55-339b4eb6d524@akamai.com>
 <309B89C4C689E141A5FF6A0C5FB2118B9714C727@ORSMSX103.amr.corp.intel.com>
From: Josh Hunt <johunt@akamai.com>
Message-ID: <71a74c86-18b6-5c6a-8663-e558c43af682@akamai.com>
Date: Thu, 10 Oct 2019 17:27:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <309B89C4C689E141A5FF6A0C5FB2118B9714C727@ORSMSX103.amr.corp.intel.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-10-10_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=733
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910110000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-10_09:2019-10-10,2019-10-10 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 malwarescore=0
 impostorscore=0 phishscore=0 priorityscore=1501 clxscore=1011
 mlxlogscore=763 suspectscore=0 bulkscore=0 adultscore=0 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1910110001
Subject: Re: [Intel-wired-lan] [PATCH 0/3] igb, ixgbe,
 i40e UDP segmentation offload support
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
Cc: Netdev <netdev@vger.kernel.org>, Willem de Bruijn <willemb@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/10/19 5:21 PM, Brown, Aaron F wrote:
> Adding Andrew as he is most likely going to be testing this patch.
> 
> Unfortunately my mail server flags attached scripts as potential threats and strips them out.  Can you resent it as an tar file?  I don't believe it's smart enough to open up tar and flag it as a script.
> 

Hi Aaron

It looks like the netdev archive has the file. Can you try grabbing it 
from here?

https://lore.kernel.org/netdev/0e0e706c-4ce9-c27a-af55-339b4eb6d524@akamai.com/2-udpgso_bench.sh

If that doesn't work I can try your tar workaround.

Thanks
Josh
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
