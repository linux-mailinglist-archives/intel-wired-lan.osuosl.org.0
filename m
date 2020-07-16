Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 381FC222E27
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 23:49:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DFFC42046C;
	Thu, 16 Jul 2020 21:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yk-LI11GPoHI; Thu, 16 Jul 2020 21:49:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2033320461;
	Thu, 16 Jul 2020 21:49:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EAD51BF375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 20:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5744B88237
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 20:48:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WaHOg1U1A177 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 20:48:52 +0000 (UTC)
X-Greylist: delayed 00:09:45 by SQLgrey-1.7.6
Received: from viruvalge.hosting.plutex.de (inutil.org [109.69.64.57])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C99DB88231
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 20:48:51 +0000 (UTC)
Received: by viruvalge.hosting.plutex.de (Postfix, from userid 1001)
 id A72BF40511; Thu, 16 Jul 2020 22:39:02 +0200 (CEST)
Date: Thu, 16 Jul 2020 22:39:02 +0200
From: Moritz Muehlenhoff <jmm@inutil.org>
To: intel-wired-lan@lists.osuosl.org
Message-ID: <20200716203902.acn3ea2b4iorxlhq@inutil.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Mailman-Approved-At: Thu, 16 Jul 2020 21:49:11 +0000
Subject: [Intel-wired-lan] Further information on
 CVE-2019-0145/CVE-2019-0146/CVE-2019-0147/CVE-2019-0148/CVE-2019-0149 for
 Linux?
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
Cc: benh@debian.org, carnil@debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,
https://www.intel.com/content/www/us/en/security-center/advisory/intel-sa-00255.html refers
to vulnerabilities in Intel Ethernet drivers and a few of them refer to the i40e driver
specifically:

CVEID: CVE-2019-0145
Description: Buffer overflow in i40e driver for Intel(R) Ethernet 700 Series Controllers
versions before 7.0 may allow an authenticated user to potentially enable an escalation
of privilege via local access.

CVEID: CVE-2019-0146
Description: Resource leak in i40e driver for Intel(R) Ethernet 700 Series Controllers
versions before 2.8.43 may allow an authenticated user to potentially enable a denial of
service via local access.

CVEID: CVE-2019-0147
Description: Insufficient input validation in i40e driver for Intel(R) Ethernet 700 Series
Controllers versions before 7.0 may allow an authenticated user to potentially enable a
denial of service via local access.

CVEID: CVE-2019-0148
Description: Resource leak in i40e driver for Intel(R) Ethernet 700 Series Controllers
versions before 7.0 may allow an authenticated use to potentially enable a denial of
service via local access.

CVEID: CVE-2019-0149
Description: Insufficient input validation in i40e driver for Intel(R) Ethernet 700
Series Controllers versions before 2.8.43 may allow an authenticated user to potentially
enable a denial of service via local access.

Is there any further information which commits fixed these and if so, were they submitted
to stable kernels? (The Debian kernels are based on 4.9.x and 4.19.x LTS kernels, so that
we can make sure these are addressed in stable/oldstable releases)

Cheers,
        Moritz


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
