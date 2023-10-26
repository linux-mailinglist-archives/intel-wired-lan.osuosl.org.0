Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDD47D8794
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Oct 2023 19:30:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CDCFA424AA;
	Thu, 26 Oct 2023 17:30:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CDCFA424AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698341434;
	bh=p3NXf1sQjGJfJkG8XiBIRlCrWDvKnQZhRq4W5M2xwQE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZFnclh0xDTgModS7piU1+C2IOogTRz4OA3b1a7+FWwM/XFU9nGkuWMXYA6ti4/9uL
	 0r272AqW5kd7BFnm6pLbfvvavOIcKuD4WhjJCEBPk5YGF4AbWqwjCm/XIjxhyonLFs
	 WW7VbwYzYMo3fAbrdOMHgf2SyT8bbXFFasCxGTiipiv2UUGz06eneF/M93igKxTKqK
	 0KW0dZE4/zVHjXAh6xeI0tm4hE471XJbJn04ZwUhlDq7aq9NVn65P9Kc0eY9hlRw5w
	 yWuQx5QDXgD4HbTgeIUvLsh2fy6cOgqIvQdEL/3OQTvJrNnkT32nLh/yihxKIb3CVn
	 ueq9qdujXyiVw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NXlnE5wBCgCX; Thu, 26 Oct 2023 17:30:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F155C416A4;
	Thu, 26 Oct 2023 17:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F155C416A4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A90621BF955
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8057483F7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:30:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8057483F7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFE9JpEhjhL7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Oct 2023 17:30:26 +0000 (UTC)
Received: from relay.hostedemail.com (smtprelay0014.hostedemail.com
 [216.40.44.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D34E83F73
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Oct 2023 17:30:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D34E83F73
Received: from omf07.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay09.hostedemail.com (Postfix) with ESMTP id 1775780BF4;
 Thu, 26 Oct 2023 17:30:21 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf07.hostedemail.com (Postfix) with ESMTPA id D70822002C; 
 Thu, 26 Oct 2023 17:30:09 +0000 (UTC)
Message-ID: <7eec92d9e72d28e7b5202f41b02a383eb28ddd26.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Justin Stitt <justinstitt@google.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Shay Agroskin
 <shayagr@amazon.com>, Arthur Kiyanovski <akiyano@amazon.com>, David Arinzon
 <darinzon@amazon.com>, Noam Dagan <ndagan@amazon.com>, Saeed Bishara
 <saeedb@amazon.com>, Rasesh Mody <rmody@marvell.com>, Sudarsana Kalluru
 <skalluru@marvell.com>, GR-Linux-NIC-Dev@marvell.com, Dimitris Michailidis
 <dmichail@fungible.com>, Yisen Zhuang <yisen.zhuang@huawei.com>, Salil
 Mehta <salil.mehta@huawei.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>,  Tony Nguyen <anthony.l.nguyen@intel.com>,
 Louis Peens <louis.peens@corigine.com>, Shannon Nelson
 <shannon.nelson@amd.com>, Brett Creeley <brett.creeley@amd.com>, 
 drivers@pensando.io, "K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang
 <haiyangz@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui
 <decui@microsoft.com>, Ronak Doshi <doshir@vmware.com>, VMware PV-Drivers
 Reviewers <pv-drivers@vmware.com>, Andy Whitcroft <apw@canonical.com>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Lukas Bulwahn
 <lukas.bulwahn@gmail.com>
Date: Thu, 26 Oct 2023 10:30:08 -0700
In-Reply-To: <20231025-ethtool_puts_impl-v1-3-6a53a93d3b72@google.com>
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-3-6a53a93d3b72@google.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-Rspamd-Queue-Id: D70822002C
X-Rspamd-Server: rspamout02
X-Stat-Signature: gjwxid9tcn9tzi1nmcpi4hsmszny7q6k
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+EI9TAgP8y8yYHcBc5iItVgLH9GhH6Qh8=
X-HE-Tag: 1698341409-723574
X-HE-Meta: U2FsdGVkX18C6ufE/QssxWAA52g0kzXgdZJqwTBNOwFNEA1mGXzSgLWrdDtJfFtYvR9vYZrerqOWMEcF3r4AsUcZeyzJYE1vyu0mO5pnfPGhcKIJlPngze7YtCQC93ao9Ul+7IgR2g8cFoFVOEel2H8MBoPmvse5vEFG5iXnHNez6fBmMPrKhvTsCwfZmHT0TUa+OeBfONQdiUG2AjKOZBTD2+mZnQazSe0jyd2GjoF2cTSx3nGhMhrOVIjP1h1HOwA7PbqgXKe1fj+gEvsvZe+MMHOiZmH7OTlkcMCNubwSzg55E5kA+5xCLr+pJUR3FHRZombKDZ5Q8vAyzi/OB5BS3LNhadq6
Subject: Re: [Intel-wired-lan] [PATCH 3/3] checkpatch: add ethtool_sprintf
 rules
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
Cc: linux-hyperv@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 netdev@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>,
 oss-drivers@corigine.com, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2023-10-25 at 23:40 +0000, Justin Stitt wrote:
> Add some warnings for using ethtool_sprintf() where a simple
> ethtool_puts() would suffice.

Hi again Justin.

After I read patch 1/3 I don't object at all.

spatch/cocci will always be a better option than checkpatch
for conversions like this because it's a proper grammar parser
and checkpatch is a stupid little perl script.

If you resubmit this please:


> diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
[]
> @@ -7020,6 +7020,19 @@ sub process {
>  			     "Prefer strscpy, strscpy_pad, or __nonstring over strncpy - see: https://github.com/KSPP/linux/issues/90\n" . $herecurr);
>  		}
>  
> +# ethtool_sprintf uses that should likely be ethtool_puts
> +		if (   $line =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\)/   ) {
> +			WARN("ETHTOOL_SPRINTF",
> +			     "Prefer ethtool_puts over ethtool_sprintf with only two arguments" . $herecurr);
> +		}
> +
> +		# use $rawline because $line loses %s via sanitization and thus we can't match against it.
> +		if (   $rawline =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*\"\%s\"\s*,\s*$FuncArg\s*\)/   ) {
> +			WARN("ETHTOOL_SPRINTF2",
> +			     "Prefer ethtool_puts over ethtool_sprintf with standalone \"%s\" specifier" . $herecurr);
> +		}

o remove the whitespace before and after the parentheses
o use the same type "ETHTOOL_SPRINTF" or maybe "PREFER_ETHTOOL_PUTS"
  for both warnings.
o Add a newline on the message output
o Add a --fix option

Something like:
---
 scripts/checkpatch.pl | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 25fdb7fda1128..6924731110d87 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -7011,6 +7011,25 @@ sub process {
 			     "Prefer strscpy, strscpy_pad, or __nonstring over strncpy - see: https://github.com/KSPP/linux/issues/90\n" . $herecurr);
 		}
 
+# ethtool_sprintf uses that should likely be ethtool_puts
+		if ($line =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*$FuncArg\s*\)/) {
+			if (WARN("PREFER_ETHTOOL_PUTS",
+				 "Prefer ethtool_puts over ethtool_sprintf with only two arguments\n" . $herecurr) &&
+			    $fix) {
+				$fixed[$fixlinenr] =~ s/\bethtool_sprintf\s*\(\s*($FuncArg)\s*,\s*($FuncArg)/ethtool_puts($1, $7)/;
+			}
+		}
+
+		# use $rawline because $line loses %s via sanitization and thus we can't match against it.
+		if ($rawline =~ /\bethtool_sprintf\s*\(\s*$FuncArg\s*,\s*\"\%s\"\s*,\s*$FuncArg\s*\)/) {
+			if (WARN("PREFER_ETHTOOL_PUTS",
+				 "Prefer ethtool_puts over ethtool_sprintf with standalone \"%s\" specifier\n" . $herecurr) &&
+			    $fix) {
+				$fixed[$fixlinenr] =~ s/\bethtool_sprintf\s*\(\s*($FuncArg)\s*,\s*"\%s"\s*,\s*($FuncArg)/ethtool_puts($1, $7)/;
+			}
+		}
+
+
 # typecasts on min/max could be min_t/max_t
 		if ($perl_version_ok &&
 		    defined $stat &&



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
