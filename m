Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C42D782D03
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 17:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EABD2405C4;
	Mon, 21 Aug 2023 15:14:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EABD2405C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692630862;
	bh=so8T3wpeFt7unDyJL4DwdzqzaNrYW+cJNpfg1jLBEMA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cfvZBR4WfjI7B5JUJgdxt/3MrfCOtA9AAbXxvopxNxQO9VjhAntOe3aEoGA6TqTl+
	 wGeyMnW7A2foXx4q3jhKM8piwD1mZUNsep8RRvPSkX1j8655JwititxJUphadbU0LC
	 J102uzBiO0QTnWNxF9nhLw3RGqQCXKQbtMFr7wCYpo3LFzYcK9ylK+Wxbm3epgOG4C
	 xCPv4qux5UZoJnYq4w1mABKoUSfphIDqS4ayNGCy5aFjYXo7+P+xiBRFrkdRl+LyEv
	 WwYbdAWzz4HinZqRP2COi8BiLAU92N8MTdsdxyDeQlxWLbfFrs0fJBqZk+LqtWWqaP
	 nd8J7OWhwrBIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L3Eo6bUMSq3c; Mon, 21 Aug 2023 15:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E39DA405AA;
	Mon, 21 Aug 2023 15:14:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E39DA405AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1461B1BF304
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC79D8177C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:06:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC79D8177C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aXqk0ca8v1S5 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 07:06:08 +0000 (UTC)
X-Greylist: delayed 1200 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 21 Aug 2023 07:06:08 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 591BC8177A
Received: from mx0b-0016f401.pphosted.com (mx0b-0016f401.pphosted.com
 [67.231.156.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 591BC8177A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 07:06:08 +0000 (UTC)
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 37KLt31d028653; Sun, 20 Aug 2023 23:46:05 -0700
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
 by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3sjw8jbrx8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 20 Aug 2023 23:46:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Li68ncMwM3RNZalN99vAyK8wrTIFBwWkDFgrNYOLRUKCrpG8lrbR+MNGx1E97xQ4gaSmNDVN8/eODmL2FKQdvdxxN+49n3+l4aKUoDPRqV7Em8uAV8nNWOa2YRnte0XtpCZjzKfCxSJdn+EhqlLVrS0b24fYg4sNQ4MKDWmW/mN57tJCfZOgnbSPbYsL86TUHmNhSl8U6FxCtx6bU8Q6+INahPsLhyUMQcwj79HLoOFIQdUeDfoSoeMu8KuTVB/bMEjD+1r1kbburwvkmxtgdsx/sgv4jvqNCYV9eMJnBkHyFviiQxDdXCMZIzoHkp9+Owuu6KN6Q/je1aOSQX55EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8eB6TorHXL5aZFEt5Q9z39KdSNgSvNKT9BrfCvKZrg=;
 b=Tyq2o8TM4IY7xuorPLoNf1J+NquruPpBqBhb1/DVPAY0imV7uNNW50uBMGQeEZ22BFXm6utfTq55lYY9SyCnp46mD90Q96xBWY5I4ZVXWnmcEOHcJI2c61ah0IaAdiaulzAj7GXj33lV81eXyfkzKDfIe6C9ExdsbfHNu3omPovIPNFiz0lCYjBw6IfKj/po7tJv0RVaLAir4Yyq0ZGtDw43SZX9C4ox1FDuYYQ7J9udFtflbNZLTpnGZKjoyif8e282Kr6a17gFhPL6jzKn1uyoQShUxBDcnTXvfZtGWfMAy9Q3ZfDwB1rvdmzTsu7bSZlyCWKHMDk+ZFWTov8AQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
Received: from CO1PR18MB4666.namprd18.prod.outlook.com (2603:10b6:303:e5::24)
 by MW4PR18MB5036.namprd18.prod.outlook.com (2603:10b6:303:1bb::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 06:46:02 +0000
Received: from CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::688e:38e7:6204:7758]) by CO1PR18MB4666.namprd18.prod.outlook.com
 ([fe80::688e:38e7:6204:7758%6]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 06:46:02 +0000
From: Subbaraya Sundeep Bhatta <sbhatta@marvell.com>
To: Junfeng Guo <junfeng.guo@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [EXT] [PATCH iwl-next v5 00/15] Introduce the Parser Library
Thread-Index: AQHZ0+grjaeEKo/rzkClAH/LDHWCL6/0TMCQ
Date: Mon, 21 Aug 2023 06:46:02 +0000
Message-ID: <CO1PR18MB46661FF0DD278978575A20C9A11EA@CO1PR18MB4666.namprd18.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230821023833.2700902-1-junfeng.guo@intel.com>
In-Reply-To: <20230821023833.2700902-1-junfeng.guo@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-rorf: true
x-dg-ref: =?us-ascii?Q?PG1ldGE+PGF0IG5tPSJib2R5LnR4dCIgcD0iYzpcdXNlcnNcc2JoYXR0YVxh?=
 =?us-ascii?Q?cHBkYXRhXHJvYW1pbmdcMDlkODQ5YjYtMzJkMy00YTQwLTg1ZWUtNmI4NGJh?=
 =?us-ascii?Q?MjllMzViXG1zZ3NcbXNnLTYyOTA5NmIyLTNmZWUtMTFlZS05YzY4LWJjZjE3?=
 =?us-ascii?Q?MTIxOGI3YVxhbWUtdGVzdFw2MjkwOTZiMy0zZmVlLTExZWUtOWM2OC1iY2Yx?=
 =?us-ascii?Q?NzEyMThiN2Fib2R5LnR4dCIgc3o9Ijc4MzgiIHQ9IjEzMzM3MDczOTU5NzI2?=
 =?us-ascii?Q?MTI3NiIgaD0ibUJmOWxHNnA0bXhxQTdqTTdDUzdsQUlITUk0PSIgaWQ9IiIg?=
 =?us-ascii?Q?Ymw9IjAiIGJvPSIxIiBjaT0iY0FBQUFFUkhVMVJTUlVGTkNnVUFBTjRQQUFE?=
 =?us-ascii?Q?Y09TQWwrOVBaQWFncCtaWURkdWdKcUNuNWxnTjI2QWtaQUFBQUFBQUFBQUFB?=
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
 =?us-ascii?Q?QUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFB?=
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
 =?us-ascii?Q?QUFBQUFBQUFBQUFDUUFBQUFBQUFBQUFBQUFBQVFBQUFBQUFBQUFDQUFBQUFB?=
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
x-ms-traffictypediagnostic: CO1PR18MB4666:EE_|MW4PR18MB5036:EE_
x-ms-office365-filtering-correlation-id: d90575cb-0dcb-4a1e-c0bf-08dba2124951
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 95ugWySxvx3k1O0I1bYOcLKDo2pToRll7GJYZ7PGguz6qzVlwleIOPRSiVhOhvukZ+gPCQfBU1OiQwRzXGCCYmBszC/t12W6+Korqw60jxgiPB7YTvPZady3CgLumMb5SLO0vK3EXFox0SWS2W7GyCiJOq1EE9We+UvD6xBg28TH7fq7W57HH1BObniuvtbNajOwP4EzHjFdqjeHtPXSF6fbdd9F5/UEAdZIZWIT0XSG0tUF+iWRoCkl8KgaReFDqN1i5GZdXTt3kmb7pF0K2igYjojqsSXHiCRWduE3FDZY2abEjO35TurYHjrljSniawJA//waDC/rGJ6r0kHQ9ttEBkJ00fsB0S+9N59YmZ91Vu/eVzG0yQ1ypfHDQZfUxu8p6uUlyFMYgcQjGn/7Vzq0yXCylMOMn6ZnG8KYARkxRt9k0a9IFWin8+7fjvgUC4I4Qffp6r2Wx1YpMMdk+Q2w/gvNTUgDlDoIJbdRn6DhUeko4aPicBrQZ8PpYmgLErPOTBd9gb8ngyvLz0VrjJnLikXbTqAnm0Gi+3/S08quWWHcfzntnrAVTUvDsK9A1E2rQ7kDvfF6LKxGAEHiapRc0vUo8bzNBR5mI4tnJNlveO1yqIR+QV7NivfqclR2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR18MB4666.namprd18.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(346002)(366004)(39860400002)(186009)(1800799009)(451199024)(66446008)(64756008)(54906003)(66476007)(76116006)(66556008)(66946007)(316002)(9686003)(110136005)(8676002)(8936002)(4326008)(41300700001)(122000001)(478600001)(71200400001)(55016003)(38070700005)(7696005)(38100700002)(6506007)(2906002)(83380400001)(86362001)(5660300002)(33656002)(26005)(52536014);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fwVMepxhe+qNBgm5ZpfseelwidD+asgBWurwkovV8Fs0KN62yk5xzQNd2Ylb?=
 =?us-ascii?Q?r1919P+EfKPMdiq15ywbnEd/Vf2iUJoU6fljTiMWMfhXP7s4j5XSfquu+AsW?=
 =?us-ascii?Q?Hm47JJfr+Q98w0DpP/C/2fm+Hq1MnxLeVwE4z3J69D7r7/lK4Kp35HAdDhUO?=
 =?us-ascii?Q?oCOj260blFvPKkohCypCmcXBWvzbXTw+KzNAA0CT7vFMlU1GJ0AQPa0N1V0J?=
 =?us-ascii?Q?f5VrjRP64hF6o/JHkW76gvP25Q8yzQ2gBShJtutBge4Mbycjoj3gtroxdSP5?=
 =?us-ascii?Q?0wgr+vKwSYpE+BAz0ga+mAn0YfUdbBdQQaexQzYkteCo+zDss2+SyUXs9ejm?=
 =?us-ascii?Q?RZBhSEBaozxjCkw52LzkQqvjvFeBxJKAzuzJIowc9QsHo5ZmH34NU/l3rr2Q?=
 =?us-ascii?Q?3QldXmdeoPzdZNkwxrVokGplw20XdOcfE/ejVanIsRPuvPTVmq5uyMduJbht?=
 =?us-ascii?Q?ZD7uHyNprbxLn8NhH8nHLmtHeMir29WRvbSxLagUIcOzJnav1CDs/rWBGFu9?=
 =?us-ascii?Q?cG6mjPv/FtX+HHltKbofBGj93sefwLuojN39wTW92Q3OBWJllDTXU0uhtJF8?=
 =?us-ascii?Q?587j8mDANbpacIRoQZP3dmdEC3pOtLXKzcN2spkVoLtQidYwuQaswxzsZoi8?=
 =?us-ascii?Q?Q0Gw/5i2g9wp6qm0fQj5+FzLeTW4UfqbgVcUnXhjmVuFoEXM38k4lpd51Egh?=
 =?us-ascii?Q?9hv5ybvaLTObF8JLfcg4/+g8kid9KIoNkdzeNF/RuxRWxkj+gpePZVX3mbKO?=
 =?us-ascii?Q?HVqBOMVb6FnhABzsaiDWDsmVICgRJgmBx2se8LDYUFC4+0obzkkLzW0y0nK8?=
 =?us-ascii?Q?fowUd3Wx6C855/+MRyUmfhby6LoGSqk0UehrZqCo++85ZwcxS13DTjVs9Mwg?=
 =?us-ascii?Q?KZ2fCebWcu47cjlQA7Psl9DESkgeD1hExwy2FR43wdDPPjL9Uj9ASPGbw+X/?=
 =?us-ascii?Q?DYG27y/kDMg/KidTcn2qL7GxfytUVbc8nMQCFIk8dBuXG8ZgMgXBjcPdgEN0?=
 =?us-ascii?Q?xdv7VtJg1WmMzRLZDB0FkKe9S5sMbK7ZlpqDx0PAMu1nzU1D6yMLa9b2VRoG?=
 =?us-ascii?Q?C7E4zkAOxadMVG4+KPOTs1ZI39jFQkHQ11Z+Kd9JFLFwqxaIrGAjoDx/dMtx?=
 =?us-ascii?Q?6OO6J8KByMat3u/J9JWyHzZObD/NEVhxsBlkvkzZmZzuew5mFV1G2AGekzY8?=
 =?us-ascii?Q?89diyr8dMnFOF3M7pMCrPG45zLUAiydviO/HN8y6Yt9T7nid3CjZI9ARkGgK?=
 =?us-ascii?Q?r9xV2l/ib5VjHyBgjETd5cSUafsxC35jT3udv3UIlRo1BSWDFHsBN4OaU3PF?=
 =?us-ascii?Q?UGn5xJwakiteh9EKm5b4/A6EgHIFjmq318P24BujD6bpM8Sk8DjDumzUAGYX?=
 =?us-ascii?Q?9FOKmDPuS1PcJpw8bWMRNs03eDofFhsK22Jsf1BlKryVHFOngPFaTpkGu2y0?=
 =?us-ascii?Q?rxOtvmh3QDa5YAXwqNyPde0jgNjLItcdjsiAmVI+oqpTUs9fq7EN0fK16yvO?=
 =?us-ascii?Q?/mQWF/7Fpfqr8DfwAbrYoEOHGdojMNncMmBdAqJBmZ23CNYWrEOSWSDzGLNd?=
 =?us-ascii?Q?V4qXMoIcSIhd9I9/yKg=3D?=
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR18MB4666.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d90575cb-0dcb-4a1e-c0bf-08dba2124951
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 06:46:02.5989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sk1IN5ygDEvUCW+xfO+2Tns1P0v8+iSgmDG0+Qax/jHpZ1PETwrLodH4tQkE0bKrDaN+oIsXbfvvuGrcd3ui8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR18MB5036
X-Proofpoint-ORIG-GUID: YRP-CkM35LebvB8CC7-rv4ZUdSaiPIhu
X-Proofpoint-GUID: YRP-CkM35LebvB8CC7-rv4ZUdSaiPIhu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-20_15,2023-08-18_01,2023-05-22_02
X-Mailman-Approved-At: Mon, 21 Aug 2023 15:14:15 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8eB6TorHXL5aZFEt5Q9z39KdSNgSvNKT9BrfCvKZrg=;
 b=gYlhK5cCzEM21ObtmEDYu2NVOXRfJ3f6yMMC7pCTNdRXYixGRDOdIBAEykS4FAeZiaXi6yMj5PuZBCVL3edPwPGFkHz2Ce8RKwJbf7lwRn2pag6fnEsWCiARSqr5+DFpJh3rwnNIQIal7xGuRPpF0nWGdM6QypHLk1jfJXxItW0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=marvell.onmicrosoft.com
 header.i=@marvell.onmicrosoft.com header.a=rsa-sha256
 header.s=selector1-marvell-onmicrosoft-com header.b=gYlhK5cC
Subject: Re: [Intel-wired-lan] [EXT] [PATCH iwl-next v5 00/15] Introduce the
 Parser Library
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
Cc: "ivecera@redhat.com" <ivecera@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "qi.z.zhang@intel.com" <qi.z.zhang@intel.com>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

>-----Original Message-----
>From: Junfeng Guo <junfeng.guo@intel.com>
>Sent: Monday, August 21, 2023 8:08 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; anthony.l.nguyen@intel.com;
>jesse.brandeburg@intel.com; qi.z.zhang@intel.com; ivecera@redhat.com;
>sridhar.samudrala@intel.com; Junfeng Guo <junfeng.guo@intel.com>
>Subject: [EXT] [PATCH iwl-next v5 00/15] Introduce the Parser Library
>
>External Email
>
>----------------------------------------------------------------------
>Current software architecture for flow filtering offloading limited
>the capability of Intel Ethernet 800 Series Dynamic Device
>Personalization (DDP) Package. The flow filtering offloading in the
>driver is enabled based on the naming parsers, each flow pattern is
>represented by a protocol header stack. And there are multiple layers
>(e.g., virtchnl) to maintain their own enum/macro/structure
>to represent a protocol header (IP, TCP, UDP ...), thus the extra
>parsers to verify if a pattern is supported by hardware or not as
>well as the extra converters that to translate represents between
>different layers. Every time a new protocol/field is requested to be
>supported, the corresponding logic for the parsers and the converters
>needs to be modified accordingly. Thus, huge & redundant efforts are
>required to support the increasing flow filtering offloading features,
>especially for the tunnel types flow filtering.
>
>This patch set provides a way for applications to send down training
>packets & masks (in binary) to the driver. Then these binary data
>would be used by the driver to generate certain data that are needed
>to create a filter rule in the filtering stage of switch/RSS/FDIR.
>
Which application? Can you provide usage example too. Is it okay to
parse binary data in kernel driver? We do have similar requirements I
am thinking if we can leverage this for all drivers. 

Thanks,
Sundeep

>Note that the impact of a malicious rule in the raw packet filter is
>limited to performance rather than functionality. It may affect the
>performance of the workload, similar to other limitations in FDIR/RSS
>on AVF. For example, there is no resource boundary for VF FDIR/RSS
>rules, so one malicious VF could potentially make other VFs
>inefficient in offloading.
>
>The parser library is expected to include boundary checks to prevent
>critical errors such as infinite loops or segmentation faults.
>However, only implementing and validating the parser emulator in a
>sandbox environment (like ebpf) presents a challenge.
>
>The idea is to make the driver be able to learn from the DDP package
>directly to understand how the hardware parser works (i.e., the
>Parser Library), so that it can process on the raw training packet
>(in binary) directly and create the filter rule accordingly.
>
>Based on this Parser Library, the raw flow filtering of
>switch/RSS/FDIR could be enabled to allow new flow filtering
>offloading features to be supported without any driver changes (only
>need to update the DDP package).
>
>
>v5:
>- Update copyrights of new files to be 2023 only.
>- Update patch set series prefix.
>- Fix typo on patch 2 commit message.
>
>v4:
>- Update cover letter series title.
>
>v3:
>- Replace magic hardcoded values with macros.
>- Use size_t to avoid superfluous type cast to uintptr_t in function
>  ice_parser_sect_item_get.
>- Prefix for static local function names to avoid namespace pollution.
>- Use strstarts() function instead of self implementation.
>
>v2:
>- Fix build warnings.
>
>
>Junfeng Guo (15):
>  ice: add parser create and destroy skeleton
>  ice: init imem table for parser
>  ice: init metainit table for parser
>  ice: init parse graph cam tables for parser
>  ice: init boost tcam and label tables for parser
>  ice: init ptype marker tcam table for parser
>  ice: init marker and protocol group tables for parser
>  ice: init flag redirect table for parser
>  ice: init XLT key builder for parser
>  ice: add parser runtime skeleton
>  ice: add internal help functions
>  ice: add parser execution main loop
>  ice: support double vlan mode configure for parser
>  ice: add tunnel port support for parser
>  ice: add API for parser profile initialization
>
> drivers/net/ethernet/intel/ice/Makefile       |  11 +
> drivers/net/ethernet/intel/ice/ice_bst_tcam.c | 313 +++++++
> drivers/net/ethernet/intel/ice/ice_bst_tcam.h |  52 ++
> drivers/net/ethernet/intel/ice/ice_common.h   |   4 +
> drivers/net/ethernet/intel/ice/ice_ddp.c      |  10 +-
> drivers/net/ethernet/intel/ice/ice_ddp.h      |  14 +
> drivers/net/ethernet/intel/ice/ice_flg_rd.c   |  73 ++
> drivers/net/ethernet/intel/ice/ice_flg_rd.h   |  24 +
> drivers/net/ethernet/intel/ice/ice_imem.c     | 279 ++++++
> drivers/net/ethernet/intel/ice/ice_imem.h     | 217 +++++
> drivers/net/ethernet/intel/ice/ice_metainit.c | 181 ++++
> drivers/net/ethernet/intel/ice/ice_metainit.h | 104 +++
> drivers/net/ethernet/intel/ice/ice_mk_grp.c   |  51 +
> drivers/net/ethernet/intel/ice/ice_mk_grp.h   |  17 +
> drivers/net/ethernet/intel/ice/ice_parser.c   | 562 +++++++++++
> drivers/net/ethernet/intel/ice/ice_parser.h   | 140 +++
> .../net/ethernet/intel/ice/ice_parser_rt.c    | 877 ++++++++++++++++++
> .../net/ethernet/intel/ice/ice_parser_rt.h    |  73 ++
> .../net/ethernet/intel/ice/ice_parser_util.h  |  37 +
> drivers/net/ethernet/intel/ice/ice_pg_cam.c   | 397 ++++++++
> drivers/net/ethernet/intel/ice/ice_pg_cam.h   | 142 +++
> .../net/ethernet/intel/ice/ice_proto_grp.c    |  90 ++
> .../net/ethernet/intel/ice/ice_proto_grp.h    |  31 +
> drivers/net/ethernet/intel/ice/ice_ptype_mk.c |  73 ++
> drivers/net/ethernet/intel/ice/ice_ptype_mk.h |  23 +
> drivers/net/ethernet/intel/ice/ice_tmatch.h   |  40 +
> drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
> drivers/net/ethernet/intel/ice/ice_xlt_kb.c   | 262 ++++++
> drivers/net/ethernet/intel/ice/ice_xlt_kb.h   |  80 ++
> 29 files changed, 4173 insertions(+), 5 deletions(-)
> create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_bst_tcam.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_flg_rd.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_imem.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_metainit.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_parser.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_rt.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_parser_util.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_pg_cam.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_ptype_mk.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_tmatch.h
> create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_xlt_kb.h
>
>--
>2.25.1
>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
