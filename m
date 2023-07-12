Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 824E0750F10
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 18:54:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2167D61202;
	Wed, 12 Jul 2023 16:54:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2167D61202
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689180874;
	bh=ssrWx9Hm/ChX2QzxVh8qOjcEG6tl3bzS84o94kk+QGs=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2AsobI4KbRKabhJp2sYG9chwigu/nYA4+K1dnQCVRu89dmlYzvneMaup1ojgZ4xjA
	 SK+heDx3mxlg5Ev7vEaIlsGoLo0txO7yUGltiOEVpaJnMXw/lUGYRuWlyXvLv5gFXL
	 xAQpjZSc96C9RDkiNdT/oWQHUUod/1qIwaHoabygjMHMifk2YHo34Vr0bZgIhD0VDL
	 deyTIejwL9EsLIJsjHETl0e3mJF2DcnKgxaQ/xz7rBNbud6WkDKX1I026c3sUteNHV
	 v3zHLtYzeRuLe+lOpme6PXLF1NtX4AA2MkmudO7qse0rbqPRZMOrui6mG77sV1EkSe
	 6eiHWhY6WwXcQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2xhqYsMRV-pk; Wed, 12 Jul 2023 16:54:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE04060B98;
	Wed, 12 Jul 2023 16:54:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE04060B98
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A8C41BF40A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 16:54:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E24C441753
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 16:54:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E24C441753
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DmjmTBzu8Kr2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 16:54:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0CF141745
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0CF141745
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 16:54:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 61C4A6184B;
 Wed, 12 Jul 2023 16:54:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43BF2C433C7;
 Wed, 12 Jul 2023 16:54:23 +0000 (UTC)
Date: Wed, 12 Jul 2023 09:54:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20230712095422.00acaeaa@kernel.org>
In-Reply-To: <DM6PR11MB465701C009D1DC2972F900F29B36A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230623123820.42850-1-arkadiusz.kubalewski@intel.com>
 <ZJq3a6rl6dnPMV17@nanopsycho>
 <DM6PR11MB4657084DDD7554663F86C1C19B24A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZJwWXZmZe4lQ04iK@nanopsycho>
 <DM6PR11MB4657751607C36FC711271D639B30A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZKv1FRTXWLnLGRRS@nanopsycho>
 <DM6PR11MB46575D14FFE115546FDC9DEB9B31A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZK1CizcqjqO1L/RQ@nanopsycho>
 <DM6PR11MB4657067EE043F4DBB9D8B03B9B31A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230711131443.2a4af476@kernel.org>
 <DM6PR11MB465701C009D1DC2972F900F29B36A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1689180864;
 bh=GUKIjZVgdEMfP7TDM1aNuHteDasdN91zxotPStZohNU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=oAbNSVNXNIHr6DtuTw/oe0aFSsEtMyVVSR4TG6U7T5lLWYPueKmSeg4WlMWtBySra
 IlvvKmKpHIpVXeXMLRsPzCgrj4ePLxEznwuYSoG71a9NbS9p7CbfoFooV+jlDLFCBo
 0qJ44bbNZDYeJTtRA0EXhMU0zLv6vvqpxkw/TvH606c1ylZZcFlK35RupigexhX/Ch
 FmfvjTF6JvoucrTi1TDNzw0DzsXobsfGPq6iHnEDwTDhWBa+BKtSI+iB01eAGwudH4
 +IxLG/oc4nCJg7xMhoa5NGrame6QczA00+OGkxe5MEBNuQeZCCjE/ztY4AjtMQurmv
 8MFbVIxKStt2Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=oAbNSVNX
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "airlied@redhat.com" <airlied@redhat.com>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 Jiri Pirko <jiri@resnulli.us>, "arnd@arndb.de" <arnd@arndb.de>,
 "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 12 Jul 2023 09:19:53 +0000 Kubalewski, Arkadiusz wrote:
> >> Don't think it is way to go, and I don't think there is anything good
> >> with preventing device drivers from labeling their pins the way they
> >> want.  
> >
> >We had a long argument about how label should have a clearly defined
> >meaning. We're not going to rehash it on every revision. What did I miss :|  
> 
> Well, as I understand we are discussing if dpll subsystem shall prevent
> labeling the SyncE type pins. I have labeled them in ice explicitly with
> the name of a pci device they belong to.
> 
> You haven't miss much, mostly the problem is described in this thread.

Please read this thread:

https://lore.kernel.org/all/20230503191643.12a6e559@kernel.org/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
