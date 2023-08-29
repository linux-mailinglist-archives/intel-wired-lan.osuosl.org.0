Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E2A78C856
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Aug 2023 17:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9288D4096E;
	Tue, 29 Aug 2023 15:11:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9288D4096E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693321915;
	bh=gwRDwoq3jS1WUKcyi0Rrl/84N/CTKLbVDtZUwrBsKdc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=cp5nad3uOuXBU0ssSTTNnDjXT1IdrJhHPj8aMKq6dSzeDy7cI2A1kylN3IusqqghC
	 Zql9lYLA6vpbYPkcW9AN1i96G3lWEpQ2RQsXXioJfdbTl4J8YsdCLIL3gljTaCfon1
	 +kSaY8CWpASAU/BJhrsHyOXSB5O7jm0j1RinpczqgxHjOKjJ8h2vkhUZlQuuY7Hbyn
	 kLACd2zSg62sVmWyRcoHtcZCo8DGuqgtYFcGxwOLfG/9nD2pWsdM6pxDa7FJZewGNl
	 pCmaaHj2YnbdCfwRUk4vNaK5F2Z3/hkw8VAn+oOjzVU/LSAmfXBfRl+6bldA9O2bTm
	 11GLMhADoVuVg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZGEh5ZxFLeq4; Tue, 29 Aug 2023 15:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CF16408E9;
	Tue, 29 Aug 2023 15:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CF16408E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED8DD1BF41D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 06:18:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C60ED605A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 06:18:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C60ED605A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jBknIKRobVH0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Aug 2023 06:18:53 +0000 (UTC)
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDE41600BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Aug 2023 06:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDE41600BB
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37SLokt0010618; Mon, 28 Aug 2023 23:18:35 -0700
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2177.outbound.protection.outlook.com [104.47.59.177])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3sqgwkfws2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 28 Aug 2023 23:18:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N8mHWmHiUxL90UB+womfm3pDCm7vrr6RI1xHrzJd0ZI9v3IpjMsRuFGVAg1ZgAgKwUYfaszt/aa+90lDr4UhxlPdEEhuBPHo/ZR771dPAiouJtbD3CeqS7784NWfRfPX0QCYg6/RJK2Ze0JULdL8dhKr4zm1UVud5iPYCm9LIQWVemqFuASzSU9pnwewsyCMtOPSgadQ6rwvhMvun4H+SPAmO8+/BX5n1l0Zo6IhvqLQREYhoE1TfUqBtfzdbgtx5t3irxQ2sayj05K2D4bI4fAzYWHxbFnBc/1PKmCK8u5JzkmVZFTdAqoYgRtpt0dFHI/feSOx7J1KF3akybGJFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=igCmj4hUZ3da/uFvK2WTzpgMScyd/yBoFGWOP0mDXgs=;
 b=LoIK+Dp3BS5NezZ0TWJXXJ4Wm3gsESGDm4RgOA4DyS81t16h91rJpZ/fBvpcCKXtxGsZQqDqbfvzI4fv6VmVgriMSunJqdB5Bv2TUzEVdZQjQSsFHqPcuqNpYBq/zhvWAf2+SCNOEIKyZmUjzWWYfpLIeN38PgRJyTlzhCa0AgsubQ6nihk9H2E20VRgMtmDuprRwXC2/q++ftBsP3r9QanJVFh++u8Ny0B7z2ngfdgpnGeSWM8Sh5meuO5WyDsbG5qGzeFsfKOzfh2o471UKsQA9vF9EVA1EAtGkjl6ryqtljlzrB1M9uaze7vZYmWMZnbePGH0r8ZcrdbYozzTJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from CO1PR18MB4666.namprd18.prod.outlook.com (2603:10b6:303:e5::24)
 by MW4PR18MB5106.namprd18.prod.outlook.com (2603:10b6:303:1b5::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Tue, 29 Aug
 2023 06:18:33 +0000
Received: from CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::9caf:dc2e:a8d7:b5c6]) by CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::9caf:dc2e:a8d7:b5c6%4]) with mapi id 15.20.6699.035; Tue, 29 Aug 2023
 06:18:33 +0000
From: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>
To: "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: hardware filter for matching GTP-U TEID
Thread-Index: AdnaQAvfCeTdf2eHQyWYhWQA4bzW5w==
Date: Tue, 29 Aug 2023 06:18:33 +0000
Message-ID: <CO1PR18MB46668B13A44DD677B6A241F0A1E7A@CO1PR18MB4666.namprd18.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2JoYXR0YVxh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLWRlYmUyZmU4LTQ2MzMtMTFlZS05YzY4LWJjZjE3?=
 =?us-ascii?Q?MTIxOGI3YVxhbWUtdGVzdFxkZWJlMmZlOS00NjMzLTExZWUtOWM2OC1iY2Yx?=
 =?us-ascii?Q?NzEyMThiN2Fib2R5LnR4dCIgc3o9IjE0OTYiIHQ9IjEzMzM3NzYzNTEwMDY2?=
 =?us-ascii?Q?NDM1MCIgaD0ibW9QTlZnNFpydGNEaE4yV0N0bGRsem5DWlJ3PSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBTjRQQUFB?=
 =?us-ascii?Q?ZUlpaWhRTnJaQVN6OEZiSVpsTHBCTFB3VnNobVV1a0VaQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUhBQUFBQnVEd0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUVBQVFFQkFBQUE5UmVuTHdDQUFRQUFBQUFBQUFBQUFKNEFBQUJoQUdRQVpB?=
 =?us-ascii?Q?QnlBR1VBY3dCekFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?RUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFHTUFkUUJ6QUhRQWJ3QnRBRjhBY0FC?=
 =?us-ascii?Q?bEFISUFjd0J2QUc0QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBZ0FBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFB?=
 =?us-ascii?Q?QUFBQ2VBQUFBWXdCMUFITUFkQUJ2QUcwQVh3QndBR2dBYndCdUFHVUFiZ0Ix?=
 =?us-ascii?Q?QUcwQVlnQmxBSElBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQmpBSFVB?=
 =?us-ascii?Q?Y3dCMEFHOEFiUUJmQUhNQWN3QnVBRjhBWkFCaEFITUFhQUJmQUhZQU1BQXlB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
x-dg-refone: =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFFQUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUdN?=
 =?us-ascii?Q?QWRRQnpBSFFBYndCdEFGOEFjd0J6QUc0QVh3QnJBR1VBZVFCM0FHOEFjZ0Jr?=
 =?us-ascii?Q?QUhNQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBUUFBQUFBQUFBQUNBQUFBQUFDZUFBQUFZd0IxQUhNQWRBQnZBRzBB?=
 =?us-ascii?Q?WHdCekFITUFiZ0JmQUc0QWJ3QmtBR1VBYkFCcEFHMEFhUUIwQUdVQWNnQmZB?=
 =?us-ascii?Q?SFlBTUFBeUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFB?=
 =?us-ascii?Q?QUFJQUFBQUFBSjRBQUFCakFIVUFjd0IwQUc4QWJRQmZBSE1BY3dCdUFGOEFj?=
 =?us-ascii?Q?d0J3QUdFQVl3QmxBRjhBZGdBd0FESUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFB?=
 =?us-ascii?Q?R1FBYkFCd0FGOEFjd0JyQUhrQWNBQmxBRjhBWXdCb0FHRUFkQUJmQUcwQVpR?=
 =?us-ascii?Q?QnpBSE1BWVFCbkFHVUFYd0IyQURBQU1nQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFRQUFBQUFBQUFBQ0FBQUFBQUNlQUFBQVpBQnNBSEFBWHdCekFH?=
 =?us-ascii?Q?d0FZUUJqQUdzQVh3QmpBR2dBWVFCMEFGOEFiUUJsQUhNQWN3QmhBR2NBWlFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
x-dg-reftwo: =?us-ascii?Q?QUFBQUFBQUFBQUFCQUFBQUFBQUFBQUlBQUFBQUFKNEFBQUJrQUd3QWNBQmZB?=
 =?us-ascii?Q?SFFBWlFCaEFHMEFjd0JmQUc4QWJnQmxBR1FBY2dCcEFIWUFaUUJmQUdZQWFR?=
 =?us-ascii?Q?QnNBR1VBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBRUFB?=
 =?us-ascii?Q?QUFBQUFBQUFnQUFBQUFBbmdBQUFHVUFiUUJoQUdrQWJBQmZBR0VBWkFCa0FI?=
 =?us-ascii?Q?SUFaUUJ6QUhNQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBUUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFBQUFB?=
 =?us-ascii?Q?Q2VBQUFBYlFCaEFISUFkZ0JsQUd3QVh3QndBSElBYndCcUFHVUFZd0IwQUY4?=
 =?us-ascii?Q?QWJnQmhBRzBBWlFCekFGOEFZd0J2QUc0QVpnQnBBR1FBWlFCdUFIUUFhUUJo?=
 =?us-ascii?Q?QUd3QVh3QmhBR3dBYndCdUFHVUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQnRBR0VBY2dC?=
 =?us-ascii?Q?MkFHVUFiQUJmQUhBQWNnQnZBR29BWlFCakFIUUFYd0J1QUdFQWJRQmxBSE1B?=
 =?us-ascii?Q?WHdCeUFHVUFjd0IwQUhJQWFRQmpBSFFBWlFCa0FGOEFZUUJzQUc4QWJnQmxB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFF?=
 =?us-ascii?Q?QUFBQUFBQUFBQWdBQUFBQUFuZ0FBQUcwQVlRQnlBSFlBWlFCc0FGOEFjQUJ5?=
 =?us-ascii?Q?QUc4QWFnQmxBR01BZEFCZkFHNEFZUUJ0QUdVQWN3QmZBSElBWlFCekFIUUFj?=
 =?us-ascii?Q?Z0JwQUdNQWRBQmxBR1FBWHdCb0FHVUFlQUJqQUc4QVpBQmxBSE1BQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNBQUFB?=
 =?us-ascii?Q?QUFDZUFBQUFiUUJoQUhJQWRnQmxBR3dBYkFCZkFHRUFjZ0J0QUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
x-dg-refthree: =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJ?=
 =?us-ascii?Q?QUFBQUFBSjRBQUFCdEFHRUFjZ0IyQUdVQWJBQnNBRjhBWndCdkFHOEFad0Jz?=
 =?us-ascii?Q?QUdVQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUVBQUFBQUFBQUFBZ0FBQUFBQW5nQUFBRzBB?=
 =?us-ascii?Q?WVFCeUFIWUFaUUJzQUd3QVh3QndBSElBYndCcUFHVUFZd0IwQUY4QVl3QnZB?=
 =?us-ascii?Q?R1FBWlFCekFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFRQUFBQUFBQUFBQ0FBQUFBQUNlQUFBQWJRQmhBSElBZGdCbEFHd0Fi?=
 =?us-ascii?Q?QUJmQUhBQWNnQnZBR29BWlFCakFIUUFYd0JqQUc4QVpBQmxBSE1BWHdCa0FH?=
 =?us-ascii?Q?a0FZd0IwQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFCQUFBQUFBQUFB?=
 =?us-ascii?Q?QUlBQUFBQUFKNEFBQUJ0QUdFQWNnQjJBR1VBYkFCc0FGOEFjQUJ5QUc4QWFn?=
 =?us-ascii?Q?QmxBR01BZEFCZkFHNEFZUUJ0QUdVQWN3QmZBR01BYndCdUFHWUFhUUJrQUdV?=
 =?us-ascii?Q?QWJnQjBBR2tBWVFCc0FGOEFiUUJoQUhJQWRnQmxBR3dBYkFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBRUFBQUFBQUFBQUFnQUFBQUFBbmdBQUFH?=
 =?us-ascii?Q?MEFZUUJ5QUhZQVpRQnNBR3dBWHdCd0FISUFid0JxQUdVQVl3QjBBRjhBYmdC?=
 =?us-ascii?Q?aEFHMEFaUUJ6QUY4QVl3QnZBRzRBWmdCcEFHUUFaUUJ1QUhRQWFRQmhBR3dB?=
 =?us-ascii?Q?WHdCdEFHRUFjZ0IyQUdVQWJBQnNBRjhBYndCeUFGOEFZUUJ5QUcwQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
x-dg-reffour: =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFBQUFBQ2VB?=
 =?us-ascii?Q?QUFBYlFCaEFISUFkZ0JsQUd3QWJBQmZBSEFBY2dCdkFHb0FaUUJqQUhRQVh3?=
 =?us-ascii?Q?QnVBR0VBYlFCbEFITUFYd0JqQUc4QWJnQm1BR2tBWkFCbEFHNEFkQUJwQUdF?=
 =?us-ascii?Q?QWJBQmZBRzBBWVFCeUFIWUFaUUJzQUd3QVh3QnZBSElBWHdCbkFHOEFid0Ju?=
 =?us-ascii?Q?QUd3QVpRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUJBQUFBQUFBQUFBSUFBQUFBQUo0QUFBQnRBR0VBY2dCMkFH?=
 =?us-ascii?Q?VUFiQUJzQUY4QWNBQnlBRzhBYWdCbEFHTUFkQUJmQUc0QVlRQnRBR1VBY3dC?=
 =?us-ascii?Q?ZkFISUFaUUJ6QUhRQWNnQnBBR01BZEFCbEFHUUFYd0J0QUdFQWNnQjJBR1VB?=
 =?us-ascii?Q?YkFCc0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFFQUFB?=
 =?us-ascii?Q?QUFBQUFBQWdBQUFBQUFuZ0FBQUcwQVlRQnlBSFlBWlFCc0FHd0FYd0J3QUhJ?=
 =?us-ascii?Q?QWJ3QnFBR1VBWXdCMEFGOEFiZ0JoQUcwQVpRQnpBRjhBY2dCbEFITUFkQUJ5?=
 =?us-ascii?Q?QUdrQVl3QjBBR1VBWkFCZkFHMEFZUUJ5QUhZQVpRQnNBR3dBWHdCdkFISUFY?=
 =?us-ascii?Q?d0JoQUhJQWJRQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBUUFBQUFBQUFBQUNBQUFBQUFD?=
 =?us-ascii?Q?ZUFBQUFiUUJoQUhJQWRnQmxBR3dBYkFCZkFIUUFaUUJ5QUcwQWFRQnVBSFVB?=
 =?us-ascii?Q?Y3dBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQkFBQUFBQUFBQUFJQUFBQUFBSjRBQUFCdEFHRUFjZ0Iy?=
 =?us-ascii?Q?QUdVQWJBQnNBRjhBZHdCdkFISUFaQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFB?=
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUVB?=
 =?us-ascii?Q?QUFBQUFBQUFBZ0FBQUFBQSIvPjwvbWV0YT4=3D?=
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR18MB4666:EE_|MW4PR18MB5106:EE_
x-ms-office365-filtering-correlation-id: 3efdd23b-7426-42a3-dcc4-08dba857c57b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bf7sv3hyHX48N04juBaSBWn8c+5cnTLWJTvAkRJF+SmJNT3A11iSreQfqJSlFlMSTNas8icyNnNOfP+zX7U3SbejFUhMF/ymd8g9vCidvchDIEF+dH3fooPzDKOCSVG3FJFom2dPvaTkPSdowmJW37gOlMFn9olknLJGKIPHRer8BkX9BmnZMkYHttR14Fb/rr1cAqv20/320c9O2uCfsxJoRZjpqXSdsMxXkcQmvZEYSs7KaPLwvqqCQ0luDv27gINEqI3uLi4/39EOLSDRMPZRJhvnECykBCob9/lflPFB735xOmh+P/UdxarBn+2Ofam29jv1EHG8g2VlNv9fojRsqV5hOATIsPYyyUN0kjUVG6NksEL/BZvA2+SgjpsboRr6C9MvnYSW7Nzwau9dbddHBi8fePaniXm6NdsELIkPHMoL+/yvfkNVyoij5wi5Pm8PM4vTIAoUV99sAZ5onByGu2A1+AzotSOdk99+EA/KPgMktvO2jI7YGi85LWn6l61i+YYLKern2ZvuOAObzs8VKsfDjIk6uOX3Iy4EnwTiea8Kd+688y5OtS1jKIYuJM6MceGTIJsBCHG7HNql6NyqfARu5O6dlTxhOfSO4C7oPL8erfJFZ3xYoyX0ajA1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR18MB4666.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(396003)(376002)(136003)(1800799009)(451199024)(186009)(9686003)(38100700002)(38070700005)(316002)(41300700001)(4326008)(33656002)(2906002)(86362001)(107886003)(52536014)(26005)(5660300002)(8676002)(55016003)(8936002)(71200400001)(7696005)(6506007)(64756008)(66556008)(66476007)(66446008)(54906003)(110136005)(76116006)(122000001)(66946007)(478600001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WHyv2fOaYdPdzXWKpTryhq6Pv4Jk9+r23ExBD+avOWJo2yXXw5jM35coTgJW?=
 =?us-ascii?Q?KsajeWrV7U9qhMmK/ekaAf3LdiggKiQwrGkDJUh0m6Y6nnDTV9rcQcSKR35+?=
 =?us-ascii?Q?ABWefZoYHnFAqFR+HSkrzCHG8hxm68rzWAhF3UWyRjOe+tAccuUtfpG9wYkW?=
 =?us-ascii?Q?euVazV6vUcajTlB2dKaadFwssUBWWuqGcVh1Sq6VhgE1ALkEppMMnEHXchFS?=
 =?us-ascii?Q?WRgXK9LV0pICjI0ARQWnziOQMCx2jvM+CdOS2O2i0tM7Sm2jWqqHBZ474FBp?=
 =?us-ascii?Q?WwNouEzG+sarVr3m2Pl9vegVna48qSj6lACPGQPCUzJlt4yhIBqz0x5CPFM6?=
 =?us-ascii?Q?BYXj2/Nvk0vLuQpHVGB9FGuacdymCXxpFOAyrHvAUIEcuHfPyVyh+fmKaFME?=
 =?us-ascii?Q?wf0Rd293jVIeKSs/hcky5YvBJ1JDGgWsVZNTAlXZU20RG9Saug4qVM/HlhZ9?=
 =?us-ascii?Q?V/+4rvbuoasUsHVGq7gxMpY+UjWzjI43SbBme9tlLPGMeyDVtjBQmsr7Eaha?=
 =?us-ascii?Q?gsE7fjSjkPvdNBajumUzQ7iwsoE7cRz6WFJ/EjQGliv9Tpqud2eBykIrHDOI?=
 =?us-ascii?Q?iW2CXHjTrdmc4BT2fC7sY+WiLW46wxdCJPi8vQD/nr0ZIgrSh0RQ1AMX0mXD?=
 =?us-ascii?Q?fj1KFlyK139GrEhCMSsh6FsXSCJEzucjwQld1WRUj/S8j/1YvU7TVDLxUVH4?=
 =?us-ascii?Q?eXZZyyP3A3RsEIHhAcTeLehYBFeFrqfZ0gVJus88tljODjKGkTuBwJzn4XdG?=
 =?us-ascii?Q?DoFIMGmzg7KdCCEiI2Sp+hSdtlq+2B37gHsBb3nzKX6v20QgZXh6/BFjZ3vH?=
 =?us-ascii?Q?TwdeRpr9psA+3XLu+EqSMq+WUNBmV1lor6WZLsSICDHXaZrCKNHONn2EXDj5?=
 =?us-ascii?Q?cP5600d+4M2vcyyIOsxjtFIC9y6WTdLS3bxfdkwV6NlY0MhmcXA0+GaHslJy?=
 =?us-ascii?Q?GroqWRyzs0q+i1Dm+jWSMxgsgNmBsjM3KamINkBYb6rODyeB8W+2fxEh1ihH?=
 =?us-ascii?Q?kt4otVhkUs5Qz3Fwjqi11DpzdBoC4G0e1z38wu9TGHMgEuclzK31mHG4aGzd?=
 =?us-ascii?Q?7h7V76UWuBmbiwuwc8ftMv8DmuYwlt0Vi4/GwCx7EHFkZ66VCP5kRWoWdmJp?=
 =?us-ascii?Q?pSAUPOOufqBlgWPLKpUw2pi8Eeaz6R4+9bapJ+NZEsVDmJSeWa4Esm/h2ru6?=
 =?us-ascii?Q?8bOmJOAAP9tij+pscRXMqwCOBiuY62IrzNA88Gm0X6CDTFdfxeSS0GQGPhOM?=
 =?us-ascii?Q?m/YXp69/1EO46gWrfGhbn0ohuiUUcA29QBV2MgzA+UQqyyebQwPbPW2sWNrV?=
 =?us-ascii?Q?Li4rNArpg2e4aNOimVqedD0OWLfGGLfg8iWGEFz/rVPlxtciBNWNpyjjVn/j?=
 =?us-ascii?Q?/hY9w17RK8V2KJvQfv+10yOlFv/YL7Oalb/3Qo9XI/uuW7vjUey9dEhLVOzZ?=
 =?us-ascii?Q?Lrz93PUHO9j5XBPS8uaQ6Y1RkX8wbw5sGQ/v0E4lAhge4MJEEz4g9dt1SMkc?=
 =?us-ascii?Q?hNP5ch2Izi4ZeSlutD0BXsCpnG7k7J2NJCwa6iO7EcCKdmsS3NqM4oQKh1A2?=
 =?us-ascii?Q?RGV2nWxrUxZ2aVI5GDr2mDS/0/r4t0SEGmmcEMfz?=
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR18MB4666.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3efdd23b-7426-42a3-dcc4-08dba857c57b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2023 06:18:33.1531 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g8xkPfX6Nuu9zGwp6PbTSLUa9PLsIVIiwfcJlclp7ZSLB7PIrCb2JhBR7yduYKAmhejKfcmh3iLcYyWzEFCwLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR18MB5106
X-Proofpoint-GUID: JmhIBLip9L1ReOR1Y2XSjwhtNs4VVvPA
X-Proofpoint-ORIG-GUID: JmhIBLip9L1ReOR1Y2XSjwhtNs4VVvPA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-29_03,2023-08-28_04,2023-05-22_02
X-Mailman-Approved-At: Tue, 29 Aug 2023 15:11:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=igCmj4hUZ3da/uFvK2WTzpgMScyd/yBoFGWOP0mDXgs=;
 b=IyfLOOG9e7hUPoIC8UZctuJJ9F3yrHrzb78z3IKvu0TNpNQBbqMKctc9M1ssxSB76N7nPXAy6jNeJXt4Q7PjukVdR1OAE8FHRmn5f+BF7sEtFHK7ih1OUwhgyPEfqQW5DPzLxz19ZGxu34+STrv8moxncwLdd66qBvLLdIECukg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=marvell.onmicrosoft.com
 header.i=@marvell.onmicrosoft.com header.a=rsa-sha256
 header.s=selector1-marvell-onmicrosoft-com header.b=IyfLOOG9
Subject: [Intel-wired-lan] hardware filter for matching GTP-U TEID
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
Cc: Ratheesh Kannoth <rkannoth@marvell.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Naveen Mamindlapalli <naveenm@marvell.com>,
 Hariprasad Kelam <hkelam@marvell.com>,
 Geethasowjanya Akula <gakula@marvell.com>,
 "edumazet@google.com" <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 Sunil Kovvuri Goutham <sgoutham@marvell.com>, Suman Ghosh <sumang@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Marcin Szycik,

Below commit demonstrates that we need to create a GTP tunnel netdev and
create a tc filter on top of it. I am unable to understand how the tc filter on top of
tunnel netdev $GTP0 propagates to the interface $PF0 for hardware offload?


commit 97aeb877de7f14f819fc2cf8388d7a2d8090489d
Merge: 4d17d43 9a225f8
Author: David S. Miller <davem@davemloft.net>
Date:   Sat Mar 12 11:54:29 2022 +0000

    Merge branch '100GbE' of git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue

    Tony Nguyen says:

    ====================
    ice: GTP support in switchdev

    Marcin Szycik says:

    Add support for adding GTP-C and GTP-U filters in switchdev mode.

    To create a filter for GTP, create a GTP-type netdev with ip tool, enable
    hardware offload, add qdisc and add a filter in tc:

    ip link add $GTP0 type gtp role <sgsn/ggsn> hsize <hsize>
    ethtool -K $PF0 hw-tc-offload on
    tc qdisc add dev $GTP0 ingress
    tc filter add dev $GTP0 ingress prio 1 flower enc_key_id 1337 \
    action mirred egress redirect dev $VF1_PR


I have to redirect GTP-U packets with a TEID to a VF which may be in guest using hardware tc filter on PF.
From my understanding current TC and ethtool cannot specify match filters beyond L4 header fields.
Can I add new command something like gtp-teid to tc filter?
Please help me understand this.

Thanks,
Sundeep

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
