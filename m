Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3441D712329
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 May 2023 11:13:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 61BB081444;
	Fri, 26 May 2023 09:13:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 61BB081444
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685092416;
	bh=uHAkT5krOINgIWqCEzWPDLm4f4sQ8smMtBhsRL32MHQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TXKtAzK04eihEzml2aEK7x2fJUjFjDP5Ei/XsM/X0NGs74AQoLXapHLjdggFEHa+M
	 ScmOfInyChwdRxXqRuEmLNlQYuJDNL3l+X+C4XMiIjsdZw9KV5AjBzBKwhJn+vp5IV
	 wsQnj4bHArBI2J2MVvlhgevxMpibjn5ZNnO4pt8Z5mffc9wr0s8tnxZEjccZPdFoc8
	 4r1A2uMtAekOeO4yZYMbJ7RoKIY56R7wIO8uqG5/FnfJDVwUcHEWUZR1lttPTzK0jd
	 N9CeTzsDcZY91VVWNAYiD0eB/0fQIqsTntwS9x4/RaxTAGVI8MZaDEan7EWmhqGX/4
	 QMwIvhEaCLaog==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eeiD-DTuNZcs; Fri, 26 May 2023 09:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35BF6813DB;
	Fri, 26 May 2023 09:13:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35BF6813DB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C46D1BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 09:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 63F7342C9B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 09:13:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63F7342C9B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kFE4D6ScCqX8 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 May 2023 09:13:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CD4F42CA0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2114.outbound.protection.outlook.com [40.107.243.114])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CD4F42CA0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 May 2023 09:13:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dAYEmdVrUgzTcPXB8kTWXJX+2mLrHmxm4wbfZI7m3zbHA8V24AtSH7Roo1C3GAOo67VurkgZvyJocvbojIBSqYwkvTcbHANGxgRZQq9GWdlRdRYcrqFP/bzImuJoTfdX6wfHyvZxNmeC6Mh7PWxbV9qQqZ705AII6VW1WoH6o+iP8ayweabOk1sY/J67Y5xKVC6jB5dXtCgX2AyoyUZfMmDOj7OmnyEVCfE3hiznA/gIpRqHQM9IUqt7wo1scyY7mceArsv8PM5BMh/S+oZM/nuAddQwazSkz1Lf9ZL3LG0e3jN5y6Gd4jfkFIcJpFQAWnHx+dweUWv/A9uXM+0Bpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Yz5Ru9vV5WPmEV2I6n22FroBaUgrBwMykZl2vz5Eho=;
 b=X4YcwES4XqMKcwyBcl0GXx6sWrQCOyVBAa7cf6CZqdM8ICJeJ64ZZOH8Iy45qaXyT0eoSppUBfO8kiSUBShOFA/xCG4OJT57Q+mki/7sKtfTzaUi9KfjneM5nFWciD38V0USCSsdKRN9oQBOgucdIoo/yI0kf/aHKBX80Ym7t3zSw66KpWX9Zkaq/FgERS8JhbOX2Sin7jqx5sKNIAy7YlUUl/GfUstcM0qziqGebbUaTFE3CWcfbYqAypIkrJM1CakgJ5p4FqqBlOMjvlHOBSNVoEgFw+oVnanWb/3fu3UZa0b3Bz8vcqJW4UWWZMsZJCTZ2IAiaNY1a4BvSxxrgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB3654.namprd13.prod.outlook.com (2603:10b6:610:94::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.19; Fri, 26 May
 2023 09:13:25 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6433.017; Fri, 26 May 2023
 09:13:25 +0000
Date: Fri, 26 May 2023 11:13:18 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZHB4Lk2NlY5C9nKW@corigine.com>
References: <20230525100446.125117-1-mschmidt@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230525100446.125117-1-mschmidt@redhat.com>
X-ClientProxiedBy: AM0PR02CA0135.eurprd02.prod.outlook.com
 (2603:10a6:20b:28c::32) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB3654:EE_
X-MS-Office365-Filtering-Correlation-Id: fa52b7db-1120-4057-03cd-08db5dc975e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GV93X02wnm+RjhFU/sVlWeb8yRa99j5EuSsLdbfNUa3OVQFmA5w2nLFGcCoNFMDh4UmPvIKRE3jDFc+DIxFG6YRA1ekFX8YYisHBUAVOQl3gqXfH6TkKkK7X7PW12Lkrq6VOXorMlCF1cwy0GxJtrf18swF+xCrrv2UO6kjU3Y1ivlFrCFrQvMrdBPDZFa0QMmoiwmE3BmbKz8nV29wwXq1NX3r4mYCCb0WhIVcO4rmpe6qSedmbwCZzP+RJs1ocdyZoImWhDPkkVG1GPVwmnqN2sqU+6SQFopfyNf8pV/tXd6vKcy4p1kSD9lTP+OyRb3xwClxytmF3/oxk93WEKiPxxHPXIpxwwe7Euqn5vLSOpnqUI1gGFXluKRs//hugE/WLB9yUP7dutTqqANe+QJ69UYciOX+MNyd8vEN3few/PXQqOtyGZvJNcOechIWB1ZXoM280Y2scMN0ndB/XUp9Hw9Kab6sT9UzwaLUHgvH+bWYg6UMngQL0dow0HNwj3DO2UKxtFeYdlZJ84cigLK346hQxvOI7EYy8enz/+KguDM+ZEkG63eboNtdKdaR5nYCiDdGBs42gnoU/TaKCWFvR8kTMWE1k1ipPtZAiyt8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(366004)(39840400004)(396003)(346002)(376002)(451199021)(186003)(5660300002)(38100700002)(6486002)(966005)(36756003)(54906003)(316002)(86362001)(66946007)(66556008)(66476007)(6916009)(4326008)(41300700001)(6666004)(478600001)(6506007)(6512007)(8676002)(8936002)(44832011)(2906002)(83380400001)(2616005)(15398625002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jw6ZUCJtYxETxyy4Ec7STzTgBFAFeZwEZ7PtusU6pKJGlkmGsiX15vYlVw3R?=
 =?us-ascii?Q?iP6CV5bkEvhwbJfck9uCd5b8ZKO2qeWkR4KOmUUvpP88tv84/Q4erVhDcP4z?=
 =?us-ascii?Q?tC3FTDECWYJ7k09pSuvpBK5A9FUcutaj5KWvtIIc1qZFzOg+jwvRT4ULOkgt?=
 =?us-ascii?Q?czKqgwpdHieaEHFBFAWVFbE6m99l0YXBs3/RvIPUrZg9E7BV4R+xfh8qOM7o?=
 =?us-ascii?Q?wBEFYpGFLTwfF1y71kdJ9MfqUGl3mjF8rA3GJftUB6/2WURhsCJ33Em2G1NN?=
 =?us-ascii?Q?7/amTg+gpehCP+T+LU9NPa1jK2/FVtK5VxxXz6xqGQ45RRlNvefmpbO3Ub3t?=
 =?us-ascii?Q?yi9jgvXXyY04JcKkFyER9BqOKg+VheifBOXuAcx7mmR4HFoOJvTkbnNlIWiH?=
 =?us-ascii?Q?CHP/ArDo7/2zSnFHAhwU/BSYcaJVhAQ+hZWVisC85BRjpVTQASauYQO2Rz4Z?=
 =?us-ascii?Q?L1ZP8W6RjUnPdwEZBdaQtrQvaSenZj1xX353qjyh557ZPQh8Gj3zZ+nWy2cJ?=
 =?us-ascii?Q?KF47WxVgCY5p0Rp3V7KKtIDVnmwiXrcDBwaWQh7/QEjP73E2/oOVW+WdJYCp?=
 =?us-ascii?Q?HeH97jLjFvf/Qf120FSiKzX8kmZs/KVWhQazT+id9jiNGThW0KE09A5wPc6L?=
 =?us-ascii?Q?F2x8LJiI/XMEzCrmm6d4r6nLMHycu4mEk/beGlNMgI8GoJbtzmOj0zoGtwbJ?=
 =?us-ascii?Q?oCgwDqlTmEvnLwxdq6ZwdEA8tgI5MCDdQC79QQ2tU0/BLQtYIjOaOLJ/14kr?=
 =?us-ascii?Q?VUlMm/mcLWx8PABJdZcS/8doyYl6SC3ko4Jc89dqKXVrqtFLeCX9kPYpgLNz?=
 =?us-ascii?Q?faTLcxHTYZgSY10z85leqIy53GnPJrtQIFjkdSyhmdzWHJnp2TyjGQtUmsjk?=
 =?us-ascii?Q?4WnhoUdjW5cMLQLPd2/481DiThVbMyzoTKT5pz5/B/Kz5nVUCIBJ9ivqjf0S?=
 =?us-ascii?Q?Sp0QIKQORc6yWkoWU6v6hhR7LE1eCN4Hhp7vbGlGXR9OnrCnYHNp9QYdW7WI?=
 =?us-ascii?Q?Utxo4MRserhhOD+cw9AbQo+v7icd7Nh2DaADhLMxM0ZQYvk4YFtMy1xxWDN0?=
 =?us-ascii?Q?DNQMMpUQANEKuer+u8TpEZIX8xFYBrFWLQOsIhR77fLs6IIHk9KQQ1/3Qq1X?=
 =?us-ascii?Q?P5KWfO2CkNA0qGHkvfDzdyvJBQZCGtMCcZ/fKN8IL5DYS0te74K34yAWUhBD?=
 =?us-ascii?Q?W/u8xH0oybvrlNYrCZLu++9hN7mWips/zhcu9H6MwNm0fdQABxIgIfUGAg5i?=
 =?us-ascii?Q?QqbmiWy13Kt6lnbaCGbpb2YhcxuxPAPmz4XTWhG6N+4aIUoJTXbdY1So6iBG?=
 =?us-ascii?Q?toLLmYw4PBjBICKLjGKZwpKINS0FpM3jHzE1+l/E9nRn2RO+ElzUfn4YpR/f?=
 =?us-ascii?Q?jigtklHuFM6AkI11Vu6OxxyRHsVeNdHklaukUT7vfnrxzmgkk2syvZ5QR84G?=
 =?us-ascii?Q?Z5tz4tjkm8y76K8rcZ0fltAhD8DHLMIWSYf0Go9du209wEgTEfKCkdNiXlkO?=
 =?us-ascii?Q?1FvAYW4hSw0YkjM6ZX2TjJU4s0gV868Ucvt0H9xuiqMRs5LYBTqregoTJwyq?=
 =?us-ascii?Q?nh3vqsNo5mbB9rFb00BmLUUGeW0fp98QAAu8fmNcdBNXtHCxaD7AIccN1Jg2?=
 =?us-ascii?Q?etdZoSuUvnCxSGRlhXZiNqF2JSss4VPFm0Ra5eKtG4wVMhnVsrcJT0tTuppD?=
 =?us-ascii?Q?7gFQQw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa52b7db-1120-4057-03cd-08db5dc975e6
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2023 09:13:25.3150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hqLcAuG5t23yAM1GvPthoRf9hL3QBAHZGBxkYgPcDdwKJAW+2koanq6M9A+wpw7UJRQmsy2Zfta7SoSmjcCyOpkBBKaJdWcXeBiBqg2ybm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3654
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Yz5Ru9vV5WPmEV2I6n22FroBaUgrBwMykZl2vz5Eho=;
 b=HcZgRTWLDGYwRJWctiphhuToGycAEAcsNH3tA/ja6ukHE5Stqyd58/3pHyFyoQVuMK55I3X6pwgQyCRoWLo7UHCZGx6rwDvVJBUh8oaS9C6oWOWNzQ5LwKhgTJufbDdBEaIy/JvLtRE4UDnPvFHcDRYWTNqn3QXTS25WCCYQJIU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=HcZgRTWL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: make writes to /dev/gnssX
 synchronous
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
Cc: netdev@vger.kernel.org, Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, May 25, 2023 at 12:04:46PM +0200, Michal Schmidt wrote:
> The current ice driver's GNSS write implementation buffers writes and
> works through them asynchronously in a kthread. That's bad because:
>  - The GNSS write_raw operation is supposed to be synchronous[1][2].
>  - There is no upper bound on the number of pending writes.
>    Userspace can submit writes much faster than the driver can process,
>    consuming unlimited amounts of kernel memory.
> 
> A patch that's currently on review[3] ("[v3,net] ice: Write all GNSS
> buffers instead of first one") would add one more problem:
>  - The possibility of waiting for a very long time to flush the write
>    work when doing rmmod, softlockups.
> 
> To fix these issues, simplify the implementation: Drop the buffering,
> the write_work, and make the writes synchronous.
> 
> I tested this with gpsd and ubxtool.
> 
> [1] https://events19.linuxfoundation.org/wp-content/uploads/2017/12/The-GNSS-Subsystem-Johan-Hovold-Hovold-Consulting-AB.pdf
>     "User interface" slide.
> [2] A comment in drivers/gnss/core.c:gnss_write():
>         /* Ignoring O_NONBLOCK, write_raw() is synchronous. */
> [3] https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20230217120541.16745-1-karol.kolacinski@intel.com/
> 
> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
> ---
> v2: No real change. Just rebased, per Michal Michalik's request.

Reviewed-by: Simon Horman <simon.horman@corigine.com>

Added Johan Hovold to CC list in case he has any feedback.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
