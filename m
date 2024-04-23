Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B46B18AE37B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 13:10:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 607EA81F28;
	Tue, 23 Apr 2024 11:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fkWxZQjbX-PO; Tue, 23 Apr 2024 11:10:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AF8A81F2A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713870647;
	bh=WHTG+VdnfK0puMZFDtAOqaAimF4doqr8t5xusIlGuaY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2g4mEtDB06Z+Q6mjR8xbbdlXZvGFeUiXt9uDBIHB0JTkwY6cvxKIxkFjbXbmSeQbl
	 sbOqbDYOiM4dn5WDRDbGTS34X1impNgGwSkKvG0cbdS5AYBbtT++yk0345tnphn4Bw
	 Zp9fL9VCS6U8Eo6xVDL7vEAtoWWnblhhvcQLTtWT2F8jb433xbmGtI7XuZXPQBcTTP
	 KYUHLoPVGCIUCr2GzRgGBYyL2Df3Z5LwazievH8tZ3o6Xy0Yt2quj2dBqNKZos2/Qc
	 nOdwklqX3FToJzVUS1PKUhkfh2gC6ihSBUdAlkhtALjgYrZSylvp+5pmgI9rZZX0l9
	 pvHRW/kDXrZ9g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AF8A81F2A;
	Tue, 23 Apr 2024 11:10:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 259291BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FFB740A6C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:10:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I9U4S48fLFXd for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 11:10:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 325A6401DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 325A6401DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 325A6401DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:10:45 +0000 (UTC)
X-CSE-ConnectionGUID: Uwx9D2XZSBeea+N0JO7h/w==
X-CSE-MsgGUID: 0Aceq6qYRf66G2fFQUhc3w==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="26905752"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="26905752"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 04:10:45 -0700
X-CSE-ConnectionGUID: GHANmPF1QaSu/tzRusNdUw==
X-CSE-MsgGUID: zm+oKK03QECvY3VX9hfdGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="24342606"
Received: from mszycik-mobl1.ger.corp.intel.com (HELO [10.246.35.198])
 ([10.246.35.198])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2024 04:10:37 -0700
Message-ID: <eb54c7bb-db63-4361-b42f-dc02e2c37fbf@linux.intel.com>
Date: Tue, 23 Apr 2024 13:10:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bui Quang Minh <minhquangbui99@gmail.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>,
 Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru <skalluru@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com, Krishna Gudipati <kgudipat@brocade.com>,
 Anil Gurumurthy <anil.gurumurthy@qlogic.com>,
 Sudarsana Kalluru <sudarsana.kalluru@qlogic.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Fabian Frederick <fabf@skynet.be>, Saurav Kashyap <skashyap@marvell.com>,
 Javed Hasan <jhasan@marvell.com>, GR-QLogic-Storage-Upstream@marvell.com,
 Nilesh Javali <nilesh.javali@cavium.com>, Arun Easi <arun.easi@cavium.com>,
 Manish Rangankar <manish.rangankar@cavium.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 Sven Schnelle <svens@linux.ibm.com>
References: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20240422-fix-oob-read-v1-0-e02854c30174@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713870645; x=1745406645;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=FhMYwpD0Jy+0t5UX4wrDuIaENfV+qwJP/+xWhZFZCdQ=;
 b=ERnBvNbyFK6VwTLE/1IyNhrnjvj0TxFuN2XL4Gq4yAOJ7yN7lSkTHEOX
 CDlc2aCKPJPboY8CRQ9p25ZrTi0xPKZuDho4/fJGNiDcoXAExx5WCcUT7
 k1Ot3Y0us4F2uybfjrr42Qo85nTF/Jmcg9zLevTfktr3qGwmdSW6fDX4u
 oTSHr0zY+q3Of+/1/hBTnL1uVqM88Npsrax+/yF5sxl/b18eE4LkXFwEC
 8rX2uGqbODoQIr+zy0zp+Xw2b4xHI78iHrjfyCgGijDyqdO1VYQBh/OOC
 Igdk54FoXmzzQn2j3gpp4kz7UQAw2sFDxEGa/Tc3pVTe6HmSSwbPnLjKU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ERnBvNby
Subject: Re: [Intel-wired-lan] [PATCH 0/5] Ensure the copied buf is NULL
 terminated
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Saurav Kashyap <saurav.kashyap@cavium.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 22.04.2024 18:41, Bui Quang Minh wrote:
> Hi everyone,
> 
> I found that some drivers contains an out-of-bound read pattern like this
> 
> 	kern_buf = memdup_user(user_buf, count);
> 	...
> 	sscanf(kern_buf, ...);
> 
> The sscanf can be replaced by some other string-related functions. This
> pattern can lead to out-of-bound read of kern_buf in string-related
> functions.
> 
> This series fix the above issue by replacing memdup_user with
> memdup_user_nul or allocating count + 1 buffer then writing the NULL
> terminator to end of buffer after userspace copying.
> 
> Thanks,
> Quang Minh.
> 
> Signed-off-by: Bui Quang Minh <minhquangbui99@gmail.com>
> ---
> Bui Quang Minh (5):
>       drivers/net/ethernet/intel-ice: ensure the copied buf is NULL terminated
>       drivers/net/brocade-bnad: ensure the copied buf is NULL terminated
>       drivers/scsi/bfa/bfad: ensure the copied buf is NULL terminated
>       drivers/scsi/qedf: ensure the copied buf is NULL terminated
>       drivers/s390/cio: ensure the copied buf is NULL terminated

Typically you don't include path to module in title, instead:
ice: ensure the copied buf is NULL terminated
bna: ensure the copied buf is NULL terminated
etc.

> 
>  drivers/net/ethernet/brocade/bna/bnad_debugfs.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_debugfs.c    | 8 ++++----
>  drivers/s390/cio/cio_inject.c                   | 3 ++-
>  drivers/scsi/bfa/bfad_debugfs.c                 | 4 ++--
>  drivers/scsi/qedf/qedf_debugfs.c                | 2 +-
>  5 files changed, 11 insertions(+), 10 deletions(-)
> ---
> base-commit: ed30a4a51bb196781c8058073ea720133a65596f
> change-id: 20240422-fix-oob-read-19ae7f8f3711
> 
> Best regards,

Thanks,
Marcin
